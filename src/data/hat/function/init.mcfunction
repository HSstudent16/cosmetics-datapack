# Return if already initted
execute if entity @e[type=minecraft:chest_minecart,tag=HatBuffer] run return 1

# Create buffer minecart
summon chest_minecart 0 -65 0 {Invulnerable:1b,Tags:["HatBuffer"],NoGravity:1b}

# Create trigger scoreboard
scoreboard objectives add hat trigger

# Create command storage
data modify storage hat:vars hat_name set value {}

# Hat name enum
scoreboard players set #hat.enum var 0