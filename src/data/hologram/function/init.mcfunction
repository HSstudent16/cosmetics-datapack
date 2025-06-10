# Just in case something breaks, a reload will reset the detection system
advancement revoke @a only hologram:use_lectern
advancement revoke @s only hologram:book

# Book parsing data
data merge storage hologram:book {input:{}, output:[], lecternData:{}}

# Trigger scoreboards for editing
scoreboard objectives add edit_hologram trigger
scoreboard objectives add pos_mode dummy
scoreboard objectives add rot_mode dummy

schedule function hologram:scheduled 1s

scoreboard players set @a pos_mode 0
scoreboard players set @a rot_mode 1

# Range check variable
scoreboard players set #hologram.check var 0
scoreboard players set #hologram.hasbook var 0