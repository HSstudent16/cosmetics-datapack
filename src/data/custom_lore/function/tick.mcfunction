# Attempt to set custom lore for waiting players
execute as @a[scores={custom_lore=1..}] run function custom_lore:build_lore

# reset scoreboards
scoreboard players set @a custom_lore 0
scoreboard players enable @a custom_lore