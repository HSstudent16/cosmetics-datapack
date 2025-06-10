# Clamp to [50, 1000] 
execute if score #hologram.check var matches ..50 run tellraw @s {text:"That's as small as it gets",color:gray}
execute if score #hologram.check var matches ..50 run scoreboard players set #hologram.check var 10

execute if score #hologram.check var matches 1000.. run tellraw @s {text:"That's as big as it gets",color:gray}
execute if score #hologram.check var matches 1000.. run scoreboard players set #hologram.check var 500

execute store result entity @n[type=text_display,tag=Hologram] line_width int 1 run scoreboard players get #hologram.check var
