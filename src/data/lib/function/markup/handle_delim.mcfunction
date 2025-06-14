# If Reading words (length > 0), finish the word
execute if score #lib.markup.slice.begin var < #lib.markup.slice.beforeEnd var if score #lib.markup.parsemode var matches 0 run function lib:markup/finalise_component with storage lib:markup
# Else if reading a keyword match the name & adjust any settings
execute if score #lib.markup.parsemode var matches 1 run function lib:markup/parse_keyword

# toggle the parse mode
function lib:markup/toggle_score {score:"parsemode"}

# move slice beginning to slice end to start gathering fresh data
scoreboard players operation #lib.markup.slice.begin var = #lib.markup.slice.beforeEnd var

# If that "%" marked the end of a formatting code, dont bother writing it
execute if score #lib.markup.parsemode var matches 0 run scoreboard players add #lib.markup.slice.begin var 1
