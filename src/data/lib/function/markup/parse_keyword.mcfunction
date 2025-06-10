# Check if slice matches a keyword

# %% (Escape so the % character is still usable)
data modify storage lib:markup check set value "%%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup ast append value {text:"%"}
execute if score #lib.markup.nomatch var matches 0 run return 0

# %bold% (toggles)
data modify storage lib:markup check set value "%bold%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run function lib:markup/toggle_score {score: "bold"}
execute if score #lib.markup.nomatch var matches 0 run return 0

# %italic% (toggles)
data modify storage lib:markup check set value "%italic%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run function lib:markup/toggle_score {score: "italic"}
execute if score #lib.markup.nomatch var matches 0 run return 0

# obfuscate (toggles)
data modify storage lib:markup check set value "%obfuscate%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run function lib:markup/toggle_score {score: "obfuscated"}
execute if score #lib.markup.nomatch var matches 0 run return 0

# strikethrough (toggles)
data modify storage lib:markup check set value "%strikethrough%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run function lib:markup/toggle_score {score: "strikethrough"}
execute if score #lib.markup.nomatch var matches 0 run return 0

# underline (toggles)
data modify storage lib:markup check set value "%underline%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run function lib:markup/toggle_score {score: "underlined"}
execute if score #lib.markup.nomatch var matches 0 run return 0

# colors
data modify storage lib:markup check set value "%black%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "black"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%blue%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "dark_blue"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%green%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "dark_green"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%cyan%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "dark_aqua"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%darkred%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "dark_red"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%purple%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "dark_purple"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%gold%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "gold"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%lightgray%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "gray"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%gray%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "dark_gray"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%lightblue%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "blue"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%lime%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "green"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%aqua%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "aqua"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%red%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "red"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%magenta%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "light_purple"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%yellow%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "yellow"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%white%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "white"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%brown%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "#835432"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%orange%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "#F9801D"
execute if score #lib.markup.nomatch var matches 0 run return 0

data modify storage lib:markup check set value "%pink%"
function lib:markup/word_check with storage lib:markup
execute if score #lib.markup.nomatch var matches 0 run data modify storage lib:markup component.color set value "#F38BAA"
execute if score #lib.markup.nomatch var matches 0 run return 0