# Clamp to [10, 500] (equivalent of [0.1, 5])
execute if score #hologram.check var matches ..10 run tellraw @s {text:"That's as small as it gets",color:gray}
execute if score #hologram.check var matches ..10 run scoreboard players set #hologram.check var 10

execute if score #hologram.check var matches 500.. run tellraw @s {text:"That's as big as it gets",color:gray}
execute if score #hologram.check var matches 500.. run scoreboard players set #hologram.check var 500

# There might be a better way to do this... but I can't be bothered :D
execute store result entity @n[type=text_display,tag=Hologram] transformation.scale[0] float 0.01 run scoreboard players get #hologram.check var
execute store result entity @n[type=text_display,tag=Hologram] transformation.scale[1] float 0.01 run scoreboard players get #hologram.check var
execute store result entity @n[type=text_display,tag=Hologram] transformation.scale[2] float 0.01 run scoreboard players get #hologram.check var