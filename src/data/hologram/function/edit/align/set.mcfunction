$data modify entity @n[type=minecraft:text_display,tag=Hologram] alignment set value "$(mode)"
$tellraw @s {text:"Set alignment to $(mode)",color:gray}