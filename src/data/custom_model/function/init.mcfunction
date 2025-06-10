# Create trigger scoreboard
scoreboard objectives add custom_model trigger

# Second trigger scoreboard for model removal
scoreboard objectives add remove_model trigger

# Create offhand name storage
data modify storage custom_model:model_name name set value {text:"dummy"}