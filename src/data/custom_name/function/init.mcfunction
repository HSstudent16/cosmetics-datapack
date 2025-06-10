# Trigger scoreboard
scoreboard objectives add custom_name trigger

# Create book command storage
data merge storage custom_name:book {output:{},input:{}}

# Some looping vars
scoreboard players set #custom_name.ast.length var 0
scoreboard players set #custom_name.ast.index var 0
scoreboard players set #custom_name.nomatch var 0

# Character swap stuff
data merge storage custom_name:swap {char:"\n",index:0}