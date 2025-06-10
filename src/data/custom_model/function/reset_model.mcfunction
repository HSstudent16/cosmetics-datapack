$item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:item_model":"$(name)"}}
$tellraw @s {text:"Model reset to $(name)",color:gray,italic:true}