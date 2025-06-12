# Return if already initted
execute if entity @e[type=minecraft:chest_minecart,tag=HatBuffer] run return 1

# Force load the chunk containing the minecart, in case it is not at world spawn
forceload add 0 0 15 15

# Remove possible duplicate minecarts (lagbusting / fix for older version)
kill @e[type=minecraft:chest_minecart,tag=HatBuffer]

# Create buffer minecart
summon minecraft:chest_minecart 8 -65 8 {Invulnerable:1b,Tags:["HatBuffer"],NoGravity:1b}

# Create trigger scoreboard
scoreboard objectives add hat trigger

# Create command storage
data modify storage hat:vars hat_name set value {}

# Hat name enum
scoreboard players set #hat.enum var 0