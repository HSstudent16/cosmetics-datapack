# Convert float to int multiplied by 100
execute store result score #hologram.check var run data get entity @n[type=text_display,tag=Hologram] view_range 100

# Subtract 10
scoreboard players remove #hologram.check var 10

# Write changes
function hologram:edit/view_dist/apply