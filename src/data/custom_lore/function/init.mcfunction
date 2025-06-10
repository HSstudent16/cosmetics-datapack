# Trigger scoreboard
scoreboard objectives add custom_lore trigger

# Create book command storage
data merge storage custom_lore:book {output:{},input:{},chainedComponent:{},chainList:[],thisComponent:{}}
data merge storage custom_lore:swap {char:"\n",index:0}

# Some loop variables
scoreboard players set #custom_lore.ast.index var 0
scoreboard players set #custom_lore.ast.length var 0
scoreboard players set #custom_lore.nomatch var 0
