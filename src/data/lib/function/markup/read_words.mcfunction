# Seek to beginning of page
scoreboard players set #lib.markup.slice.begin var 0
scoreboard players set #lib.markup.slice.end var 1
scoreboard players set #lib.markup.slice.beforeEnd var 0

# Reset parse mode; formatting tags shouldn't (and can't) span
# multiple pages, so if one appears to its probably a typo
scoreboard players set #lib.markup.parsemode var 0

# Set thisPage using macro
$data modify storage lib:markup thisPage set from storage lib:markup full_text[$(page)]

# Get length of page
execute store result score #lib.markup.page.size var run data get storage lib:markup thisPage

# Loop through page contents to create ast
function lib:markup/loop/word

# Append trailing data to ast, because a new page resets the slices & discards the text
execute if score #lib.markup.parsemode var matches 0 run function lib:markup/finalise_component with storage lib:markup