# Attempt to set custom name for waiting players
execute as @a[scores={custom_name=1..}] run function custom_name:build_name

# reset scoreboards
scoreboard players set @a custom_name 0
scoreboard players enable @a custom_name