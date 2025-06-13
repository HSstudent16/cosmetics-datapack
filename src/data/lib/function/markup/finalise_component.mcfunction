# Write text settings to current component
# Color is already written to storage, so it doesn't need to be here
execute store result storage lib:markup component.bold byte 1 run scoreboard players get #lib.markup.bold var
execute store result storage lib:markup component.italic byte 1 run scoreboard players get #lib.markup.italic var
execute store result storage lib:markup component.obfuscated byte 1 run scoreboard players get #lib.markup.obfuscated var
execute store result storage lib:markup component.underlined byte 1 run scoreboard players get #lib.markup.underlined var
execute store result storage lib:markup component.strikethrough byte 1 run scoreboard players get #lib.markup.strikethrough var
execute store result storage lib:markup component.bold byte 1 run scoreboard players get #lib.markup.bold var

# Copy the text slice to the component (forgetting the ending %)
$data modify storage lib:markup component.text set string storage lib:markup thisPage $(sliceBegin) $(sliceBeforeEnd)

# Append the component to the ast list
data modify storage lib:markup ast append from storage lib:markup component