# Fail if permissions are not set
execute if data storage permissions:config {hat:false} run tellraw @s {text:"You do not have permission to wear hats :(",color:dark_red}
execute if data storage permissions:config {hat:false} run return fail

# Copy head item to minecart
item replace entity @n[type=minecraft:chest_minecart,tag=HatBuffer] container.0 from entity @s armor.head

# Copy hand item to head
item replace entity @s armor.head from entity @s weapon.mainhand

# Copy buffered item to hand
item replace entity @s weapon.mainhand from entity @n[type=minecraft:chest_minecart,tag=HatBuffer] container.0

# Clear item name var
data modify storage hat:vars hat_name set value {text:"a hat"}

# Read buffered item to get the name
execute store success score #hat.enum var run data modify storage hat:vars hat_name set from entity @s equipment.head.components."minecraft:custom_name"

# Fallback to item name
execute if score #hat.enum var matches 0 run data modify storage hat:vars hat_name.text set from entity @s equipment.head.id

# Print the alert
execute as @s run function hat:alert with storage hat:vars
