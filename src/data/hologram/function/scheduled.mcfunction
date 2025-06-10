execute as @e[type=marker,tag=HologramMarker] at @s unless block ~ ~ ~ lectern[has_book=true] run function hologram:destroy_hologram with entity @s data

schedule function hologram:scheduled 1s