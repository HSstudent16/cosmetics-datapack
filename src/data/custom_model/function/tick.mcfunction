# Check for players wanting a custom model
execute as @a[scores={custom_model=1..}] run function custom_model:apply_model

# Reset custom model score
scoreboard players set @a custom_model 0
scoreboard players enable @a custom_model

# Check for players wanting to remove a custom model
execute as @a[scores={remove_model=1..}] run function custom_model:remove_model

# Reset remove model score
scoreboard players set @a remove_model 0
scoreboard players enable @a remove_model
