# Set page to 0, to begin loop
scoreboard players set #lib.markup.page var 0

# Get page count & write to score
execute store result score #lib.markup.page.length var run data get storage lib:markup full_text

# Set parsemode to 0 (plain text)
scoreboard players set #lib.markup.parsemode var 0

# Reset intial formatting
scoreboard players set #lib.markup.italic var 0
scoreboard players set #lib.markup.bold var 0
scoreboard players set #lib.markup.obfuscated var 0
scoreboard players set #lib.markup.underlined var 0
scoreboard players set #lib.markup.striketrough var 0

# Create initial text component
data modify storage lib:markup component set value {\
  text: "",\
  bold: false,\
  italic: false,\
  obfuscated: false,\
  underlined: false,\
  strikethrough: false,\
  color: white\
}

# Clear ast
data modify storage lib:markup ast set value []

# Begin the loop!
function lib:markup/loop/page

# Write any trailing data after the loop
function lib:markup/finalise_component with storage lib:markup