# Fail if permissions are not set
execute if data storage permissions:config {sit:false} run tellraw @s {text:"You are not allowed to sit!",color:dark_red}
execute if data storage permissions:config {sit:false} run return fail

execute positioned ~ ~0.75 ~ unless block ~ ~ ~ #lib:no_collision run say "A block obstructs that seat!"
execute positioned ~ ~0.75 ~ unless block ~ ~ ~ #lib:no_collision run return fail
scoreboard players set #sit.block_match var 0
execute store success score #sit.block_match var positioned ~ ~-0.25 ~ if block ~ ~ ~ #minecraft:slabs[type=bottom] align xyz run summon interaction ~0.5 ~ ~0.5 {Tags:["Seat"],width:0.5,height:0.5}
execute if score #sit.block_match var matches 0 store result score #sit.block_match var positioned ~ ~-0.25 ~ if block ~ ~ ~ #minecraft:stairs[half=bottom] align xyz run summon interaction ~0.5 ~ ~0.5 {Tags:["Seat"],width:0.5,height:0.5}
execute if score #sit.block_match var matches 0 store result score #sit.block_match var if block ~ ~ ~ #sit:carpets align xyz run summon interaction ~0.5 ~-0.4375 ~0.5 {Tags:["Seat"],width:0.5,height:0.5}
execute if score #sit.block_match var matches 0 store result score #sit.block_match var positioned ~ ~-0.25 ~ if block ~ ~ ~ #minecraft:stairs[half=top] align xyz run summon interaction ~0.5 ~0.5 ~0.5 {Tags:["Seat"],width:0.5,height:0.5}
execute if score #sit.block_match var matches 0 store result score #sit.block_match var positioned ~ ~-0.25 ~ if block ~ ~ ~ #minecraft:slabs[type=top] align xyz run summon interaction ~0.5 ~0.5 ~0.5 {Tags:["Seat"],width:0.5,height:0.5}
execute if score #sit.block_match var matches 0 store result score #sit.block_match var positioned ~ ~-0.25 ~ if block ~ ~ ~ #minecraft:slabs[type=double] align xyz run summon interaction ~0.5 ~0.5 ~0.5 {Tags:["Seat"],width:0.5,height:0.5}
execute if score #sit.block_match var matches 0 store result score #sit.block_match var positioned ~ ~-0.25 ~ if block ~ ~ ~ #sit:full_blocks align xyz run summon interaction ~0.5 ~0.5 ~0.5 {Tags:["Seat"],width:0.5,height:0.5}
execute if score #sit.block_match var matches 0 store result score #sit.block_match var positioned ~ ~-0.25 ~ if block ~ ~ ~ #minecraft:trapdoors[half=top,open=false] align xyz run summon interaction ~0.5 ~0.5 ~0.5 {Tags:["Seat"],width:0.5,height:0.5}

ride @s mount @n[type=interaction,tag=Seat,distance=..3]
