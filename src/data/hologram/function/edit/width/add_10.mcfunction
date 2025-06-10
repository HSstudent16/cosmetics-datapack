# Convert float to int multiplied by 100
execute store result score #hologram.check var run data get entity @n[type=text_display,tag=Hologram] line_width

# add 10
scoreboard players add #hologram.check var 10

# Write changes
function hologram:edit/width/apply