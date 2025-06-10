# Stop once the loop reaches the end
execute if score #custom_name.ast.index var >= #custom_name.ast.length var run return 0

# Write index score to storage for macros
execute store result storage custom_name:swap index int 1 run scoreboard players get #custom_name.ast.index var

# Check for new line (always at beginning)
# New line found? Remove it!
data modify storage custom_name:swap char set value "\n"
function custom_name:check_char with storage custom_name:swap

# Continue the loop
scoreboard players add #custom_name.ast.index var 1

function custom_name:loop/remove_newlines

