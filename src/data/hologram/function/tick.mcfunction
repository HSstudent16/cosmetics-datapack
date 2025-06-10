# Check for editing scores
execute as @a[scores={edit_hologram=1..}] at @s run function hologram:edit/main

scoreboard players set @a edit_hologram 0
scoreboard players enable @a edit_hologram