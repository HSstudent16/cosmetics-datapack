execute as @n[type=minecraft:text_display,tag=Hologram] run function hologram:edit/pos/reset_tp with entity @s data
tellraw @s {text:"Hologram has been moved back to the lectern.",color:gray}