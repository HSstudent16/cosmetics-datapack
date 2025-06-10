# Clamp to [10, 500] (equivalent of [0.1, 5])
execute if score #hologram.check var matches ..10 run tellraw @s {text:"That's as small as it gets",color:gray}
execute if score #hologram.check var matches ..10 run scoreboard players set #hologram.check var 10

execute if score #hologram.check var matches 200.. run tellraw @s {text:"That's as big as it gets",color:gray}
execute if score #hologram.check var matches 200.. run scoreboard players set #hologram.check var 200

execute store result entity @n[type=text_display,tag=Hologram] view_range float 0.01 run scoreboard players get #hologram.check var