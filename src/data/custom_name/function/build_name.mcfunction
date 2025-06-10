# Fail if permissions are not set
execute if data storage permissions:config {custom_text:false} run tellraw @s {text:"You do not have permission to set custom text!",color:dark_red}
execute if data storage permissions:config {custom_text:false} run return fail

# Fail if there is not a book titled "name" in offhand
execute unless items entity @s weapon.offhand #lib:book[custom_name="NAME"] run tellraw @s {text:"You need a written book renamed \"NAME\" to set a custom name.",color:gray,italic:true}
execute unless items entity @s weapon.offhand #lib:book[custom_name="NAME"] run return fail

# Write offhanded book contents to input
execute if data entity @s equipment.offhand.components."minecraft:writable_book_content" run data modify storage custom_name:book input set from entity @s equipment.offhand.components."minecraft:writable_book_content"
execute if data entity @s equipment.offhand.components."minecraft:written_book_content" run data modify storage custom_name:book input set from entity @s equipment.offhand.components."minecraft:written_book_content"

# Call the book utility, save output to command storage
function lib:markup/parse_book {source:"custom_name:book",destination:"custom_name:book"}

# Prepare a loop
execute store result score #custom_name.ast.length var run data get storage custom_name:book output
scoreboard players set #custom_name.ast.index var 0

# Run the loop
function custom_name:loop/remove_newlines

# Take the formatted output, and set the mainhanded item's title
function custom_name:set_item_name with storage custom_name:book

tellraw @s {text:"Sucessfully updated item name!",color:gray,italic:true}