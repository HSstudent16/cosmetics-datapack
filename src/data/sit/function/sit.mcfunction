# Fail if permissions are not set
execute if data storage permissions:config {sit:false} run tellraw @s {text:"You are not allowed to sit!",color:dark_red}
execute if data storage permissions:config {sit:false} run return fail

execute positioned ~ ~-0.25 ~ if block ~ ~ ~ #minecraft:slabs align xyz run summon interaction ~0.5 ~ ~0.5 {Tags:["Seat"],width:0.5,height:0.5}
execute positioned ~ ~-0.25 ~ if block ~ ~ ~ #minecraft:stairs align xyz run summon interaction ~0.5 ~ ~0.5 {Tags:["Seat"],width:0.5,height:0.5}
execute if block ~ ~ ~ #sit:carpets align xyz run summon interaction ~0.5 ~-0.4375 ~0.5 {Tags:["Seat"],width:0.5,height:0.5}

ride @s mount @n[type=interaction,tag=Seat]
