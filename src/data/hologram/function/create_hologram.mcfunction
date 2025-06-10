summon marker ~ ~ ~ {Tags:["HologramMarker"],data:{hologram:0}}
$summon text_display ~ ~1 ~ {background:0,text:$(output),Tags:["Hologram"],data:{marker:0}}

# Copy uuid for precise tracking
execute as @n[type=marker,tag=HologramMarker] at @s run data modify entity @s data.hologram set from entity @n[type=text_display,tag=Hologram] UUID
execute as @n[type=text_display,tag=Hologram] run data modify entity @s data.marker set from entity @n[type=marker,tag=HologramMarker] UUID