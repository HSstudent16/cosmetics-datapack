# Copy seek position to storage for macros
execute store result storage lib:markup sliceBegin int 1 run scoreboard players get #lib.markup.slice.begin var
execute store result storage lib:markup sliceEnd int 1 run scoreboard players get #lib.markup.slice.end var
execute store result storage lib:markup sliceBeforeEnd int 1 run scoreboard players get #lib.markup.slice.beforeEnd var

# Quit the loop if the slice end has reached the string end
execute if score #lib.markup.slice.end var > #lib.markup.page.size var run return 0



# check for a return character, since it messes up lore & item names
data modify storage lib:markup check set value "\n"
function lib:markup/char_check with storage lib:markup

# Return character found? Split!
execute if score #lib.markup.parsemode var matches 0 if score #lib.markup.nomatch var matches 0 run function lib:markup/finalise_component with storage lib:markup
# move slice beginning to slice end to start gathering fresh data
execute if score #lib.markup.parsemode var matches 0 if score #lib.markup.nomatch var matches 0 run scoreboard players operation #lib.markup.slice.begin var = #lib.markup.slice.beforeEnd var


# Check for % character
data modify storage lib:markup check set value "%"
function lib:markup/char_check with storage lib:markup

# Handle % delimiter
execute if score #lib.markup.nomatch var matches 0 run function lib:markup/handle_delim


# Expand slice by one
scoreboard players add #lib.markup.slice.end var 1
scoreboard players add #lib.markup.slice.beforeEnd var 1

# Continue the word loop!
function lib:markup/loop/word