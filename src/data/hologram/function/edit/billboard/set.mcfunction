$data modify entity @n[type=text_display,tag=Hologram] billboard set value "$(mode)"
$tellraw @s {text:"Set billboard to $(mode)",color:gray}