# Book "crafting" stolen from vanilla tweaks' statues datapack.
# I don't know why they split this up into multiple functions though :/
advancement revoke @s only hologram:book

# Fail if permissions are not set
execute if data storage permissions:config {hologram:false} run tellraw @s {text:"You do not have permission to modify holograms!",color:dark_red}
execute if data storage permissions:config {hologram:false} run return fail

execute store success score #hologram.hasbook var run clear @s minecraft:written_book[minecraft:written_book_content~{title:"Holograms"}] 1
execute if score #hologram.hasbook var matches 1 run function hologram:give_book