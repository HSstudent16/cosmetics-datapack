# If a creative player deletes the buffer minecart, resummon it
execute unless entity @n[type=minecraft:chest_minecart,tag=HatBuffer] run function hat:init

# Check for players wanting to swap hats
execute as @a[scores={hat=1..}] run function hat:swap_hat

# Reset hat score
scoreboard players set @a hat 0

# Enable hat score
scoreboard players enable @a hat

# Clear buffer cart, so no items get leaked or stolen
data merge entity @n[type=minecraft:chest_minecart,tag=HatBuffer] {Items:[]}