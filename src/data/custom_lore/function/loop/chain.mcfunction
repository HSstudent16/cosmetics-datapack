# Exit loop when the end of the ast is reached
execute if score #custom_lore.ast.index var >= #custom_lore.ast.length var run return 0

# Clone current component for less headache
execute store result storage custom_lore:swap index int 1 run scoreboard players get #custom_lore.ast.index var
function custom_lore:get_this with storage custom_lore:swap

# Check if the first character is a newline. If so, remove
data modify storage custom_lore:swap char set value "\n"
execute store success score #custom_lore.nomatch var run data modify storage custom_lore:swap char set string storage custom_lore:book thisComponent.text 0 1
execute if score #custom_lore.nomatch var matches 0 run data modify storage custom_lore:book thisComponent.text set string storage custom_lore:book thisComponent.text 1

# If the first character was a newline, append the component to the list & start new chain
execute if score #custom_lore.nomatch var matches 0 run function custom_lore:add_chain

# Otherwise, append the component to the current chain
execute if score #custom_lore.nomatch var matches 1 run data modify storage custom_lore:book chainedComponent.extra append from storage custom_lore:book thisComponent

# Continue the loop
scoreboard players add #custom_lore.ast.index var 1
function custom_lore:loop/chain