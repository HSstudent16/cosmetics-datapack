# Fail if permissions are not set
execute if data storage permissions:config {custom_text:false} run tellraw @s {text:"You do not have permission to set custom text!",color:dark_red}
execute if data storage permissions:config {custom_text:false} run return fail

# Fail if there is not a book titled "lore" in offhand
execute unless items entity @s weapon.offhand #lib:book[custom_name="LORE"] run tellraw @s {text:"You need a written book renamed \"LORE\" to set a custom lore.",color:gray,italic:true}
execute unless items entity @s weapon.offhand #lib:book[custom_name="LORE"] run return fail

# Write offhanded book contents to input
execute if data entity @s equipment.offhand.components."minecraft:writable_book_content" run data modify storage custom_lore:book input set from entity @s equipment.offhand.components."minecraft:writable_book_content"
execute if data entity @s equipment.offhand.components."minecraft:written_book_content" run data modify storage custom_lore:book input set from entity @s equipment.offhand.components."minecraft:written_book_content"

# Call the book utility, save output to command storage
function lib:markup/parse_book {source:"custom_lore:book",destination:"custom_lore:book"}

# Prepare a loop!
execute store result score #custom_lore.ast.length var run data get storage custom_lore:book output
scoreboard players set #custom_lore.ast.index var 1

data modify storage custom_lore:book chainedComponent set from storage custom_lore:book output[0]
data modify storage custom_lore:book chainList set value []

# Chain text components together until a new line is found
function custom_lore:loop/chain

# Append trailing chain
data modify storage custom_lore:book chainList append from storage custom_lore:book chainedComponent

# Take the formatted output, and set the mainhanded item's lore
function custom_lore:set_item_lore with storage custom_lore:book

tellraw @s {text:"Sucessfully updated item lore!",color:gray,italic:true}