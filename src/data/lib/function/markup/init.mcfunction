# create command storage
data merge storage lib:markup {\
  full_text:[],\
  ast:[],\
  sliceBegin:0,\
  sliceEnd:0,\
  sliceBeforeEnd:-1,\
  word:"",\
  check:"",\
  component:{},\
  thisPage:"",\
  page:0\
}

# Helper vars
scoreboard players set #lib.markup.page var 0
scoreboard players set #lib.markup.page.length var 0
scoreboard players set #lib.markup.page.size var 0
scoreboard players set #lib.markup.changed var 0
scoreboard players set #lib.markup.slice.begin var 0
scoreboard players set #lib.markup.slice.end var 0
scoreboard players set #lib.markup.slice.beforeEnd var 0
scoreboard players set #lib.markup.parsemode var 0
scoreboard players set #lib.markup.toggle var 0
scoreboard players set #lib.markup.nomatch var 0
scoreboard players set #lib.markup.temp var 0

scoreboard players set #lib.markup.italic var 0
scoreboard players set #lib.markup.bold var 0
scoreboard players set #lib.markup.obfuscated var 0
scoreboard players set #lib.markup.underlined var 0
scoreboard players set #lib.markup.strikethrough var 0
