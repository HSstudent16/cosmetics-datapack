# Fail if permissions are not set
execute if data storage permissions:config {custom_model:false} run tellraw @s {text:"You do not have permission to set custom models!",color:dark_red}
execute if data storage permissions:config {custom_model:false} run return fail

# Check for offhanded paper
execute unless items entity @s weapon.offhand paper[minecraft:custom_name] run tellraw @s {text:"You need named paper in your offhand", color:gray, italic:true}
execute unless items entity @s weapon.offhand paper[minecraft:custom_name] run return fail

# ensure there is an item in the mainhand
execute if items entity @s weapon.offhand air run tellraw @s {text:"You aren't holding anything", color:gray, italic:true}
execute if items entity @s weapon.offhand air run return fail

# Copy offhand name to storage (to ensure data is created successfully)
data modify storage custom_model:model_name name set from entity @s equipment.offhand.components."minecraft:custom_name"

# Use item modifier to apply model name
function custom_model:write_string with storage custom_model:model_name