# Seat all waiting players
execute as @a[scores={sit=1..}] at @s run function sit:sit

# Remove empty seats
execute as @e[type=interaction,tag=Seat] run function sit:remove_if_needed

# Reset scoreboards
scoreboard players set @a sit 0
scoreboard players enable @a sit