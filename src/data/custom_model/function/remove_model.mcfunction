# ensure there is an item in the mainhand
execute if items entity @s weapon.mainhand air run tellraw @s {text:"You aren't holding anything", color:gray, italic:true}
execute if items entity @s weapon.mainhand air run return fail

# Use item modifier to remove model data
item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"!custom_model_data":{}}}

# Reset item model to default
data modify storage custom_model:model_name name set from entity @s SelectedItem.id
function custom_model:reset_model with storage custom_model:model_name