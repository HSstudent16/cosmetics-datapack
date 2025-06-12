scoreboard players set #sit.occupied var 0

# Check if passengers exist on the interaction
execute on passengers run scoreboard players add #sit.occupied var 1

# kill if they dont
execute if score #sit.occupied var matches 0 run kill @s
execute if score #sit.occupied var matches 0 run return 1

# If there are players & the seat is in a valid block, it stays!
execute at @s if block ~ ~ ~ #sit:full_blocks run return 0
execute at @s if block ~ ~ ~ #minecraft:stairs run return 0
execute at @s if block ~ ~ ~ #minecraft:slabs run return 0
execute at @s if block ~ ~ ~ #minecraft:trapdoors[half=top,open=false] run return 0

# Otherwise, it gets removed
kill @s