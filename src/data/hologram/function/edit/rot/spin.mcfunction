$execute if score @s rot_mode matches 0 as @n[type=minecraft:text_display,tag=Hologram] rotated as @s run rotate @s ~ ~$(amount)
$execute if score @s rot_mode matches 1 as @n[type=minecraft:text_display,tag=Hologram] rotated as @s run rotate @s ~$(amount) ~
$tellraw @s {text:"Rotated hologram by $(amount) degrees",color:gray}
