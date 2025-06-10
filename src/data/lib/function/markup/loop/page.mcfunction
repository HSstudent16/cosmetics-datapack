# stop looping if out of pages
execute if score #lib.markup.page var >= #lib.markup.page.length var run return 0

# copy page index to storage (for macros)
execute store result storage lib:markup page int 1 run scoreboard players get #lib.markup.page var

# Read the given page & fill out the ast
function lib:markup/read_words with storage lib:markup

# Increase page index by one
scoreboard players add #lib.markup.page var 1

# Continue the loop
function lib:markup/loop/page