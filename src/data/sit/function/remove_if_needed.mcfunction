scoreboard players set #sit.occupied var 0

# Check if passengers exist on the interaction
execute on passengers run scoreboard players add #sit.occupied var 1

# kill if they dont
execute if score #sit.occupied var matches 0 run kill @s