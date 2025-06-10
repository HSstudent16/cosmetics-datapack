$scoreboard players operation #lib.markup.toggle var = #lib.markup.$(score) var
$execute if score #lib.markup.toggle var matches 1.. run scoreboard players set #lib.markup.$(score) var 0
$execute if score #lib.markup.toggle var matches 0 run scoreboard players set #lib.markup.$(score) var 1