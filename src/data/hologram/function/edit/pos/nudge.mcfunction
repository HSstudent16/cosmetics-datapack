$execute if score @s pos_mode matches 0 as @n[type=minecraft:text_display,tag=Hologram] at @s run tp @s ~$(amount) ~ ~
$execute if score @s pos_mode matches 0 run tellraw @s {text: "Moved the hologram $(amount) blocks along x",color:gray}
$execute if score @s pos_mode matches 1 as @n[type=minecraft:text_display,tag=Hologram] at @s run tp @s ~ ~$(amount) ~
$execute if score @s pos_mode matches 1 run tellraw @s {text: "Moved the hologram $(amount) blocks along y",color:gray}
$execute if score @s pos_mode matches 2 as @n[type=minecraft:text_display,tag=Hologram] at @s run tp @s ~ ~ ~$(amount)
$execute if score @s pos_mode matches 2 run tellraw @s {text: "Moved the hologram $(amount) blocks along z",color:gray}