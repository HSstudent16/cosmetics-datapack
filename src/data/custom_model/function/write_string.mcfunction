$item modify entity @s weapon.mainhand {function:"minecraft:set_custom_model_data",strings:{mode:"replace_all",values:["$(name)"]}}
item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:item_model":"shared:custom"}}
$tellraw @s {text:"Model $(name) applied successfully!",color:gray,italic:true}