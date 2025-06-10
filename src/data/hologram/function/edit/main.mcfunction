# Fail if permissions are not set
execute if data storage permissions:config {hologram:false} run tellraw @s {text:"You do not have permission to edit holograms!",color:dark_red}
execute if data storage permissions:config {hologram:false} run return fail

# Exit if there is no hologram nearby
execute unless entity @n[type=text_display,tag=Hologram,distance=..4] run return fail

# Billboard options
execute if score @s edit_hologram matches 1 run function hologram:edit/billboard/set {mode:"fixed"}
execute if score @s edit_hologram matches 2 run function hologram:edit/billboard/set {mode:"horizontal"}
execute if score @s edit_hologram matches 3 run function hologram:edit/billboard/set {mode:"vertical"}
execute if score @s edit_hologram matches 4 run function hologram:edit/billboard/set {mode:"center"}

# View range
execute if score @s edit_hologram matches 5 run function hologram:edit/view_dist/sub_10
execute if score @s edit_hologram matches 6 run function hologram:edit/view_dist/reset
execute if score @s edit_hologram matches 7 run function hologram:edit/view_dist/add_10

# Shadow
execute if score @s edit_hologram matches 8 run function hologram:edit/shadow/toggle {state:true}
execute if score @s edit_hologram matches 9 run function hologram:edit/shadow/toggle {state:false}

# See through
execute if score @s edit_hologram matches 41 run function hologram:edit/see_thru/toggle {state:false}
execute if score @s edit_hologram matches 42 run function hologram:edit/see_thru/toggle {state:true}

# Line height
execute if score @s edit_hologram matches 11 run function hologram:edit/width/sub_10
execute if score @s edit_hologram matches 12 run function hologram:edit/width/reset
execute if score @s edit_hologram matches 13 run function hologram:edit/width/add_10

# Alignment
execute if score @s edit_hologram matches 36 run function hologram:edit/align/set {mode:"left"}
execute if score @s edit_hologram matches 37 run function hologram:edit/align/set {mode:"center"}
execute if score @s edit_hologram matches 38 run function hologram:edit/align/set {mode:"right"}

# Position mode (xyz)
execute if score @s edit_hologram matches 14 run function hologram:edit/pos/set_mode {mode:"x",enum:0}
execute if score @s edit_hologram matches 15 run function hologram:edit/pos/set_mode {mode:"y",enum:1}
execute if score @s edit_hologram matches 16 run function hologram:edit/pos/set_mode {mode:"z",enum:2}

# Position control
execute if score @s edit_hologram matches 17 run function hologram:edit/pos/nudge {amount:-10}
execute if score @s edit_hologram matches 18 run function hologram:edit/pos/nudge {amount:-1}
execute if score @s edit_hologram matches 19 run function hologram:edit/pos/nudge {amount:-0.1}
execute if score @s edit_hologram matches 20 run function hologram:edit/pos/reset
execute if score @s edit_hologram matches 21 run function hologram:edit/pos/nudge {amount:0.1}
execute if score @s edit_hologram matches 22 run function hologram:edit/pos/nudge {amount:1}
execute if score @s edit_hologram matches 23 run function hologram:edit/pos/nudge {amount:10}

# Rotation mode
execute if score @s edit_hologram matches 24 run function hologram:edit/rot/set_mode {mode:"pitch",enum:0}
execute if score @s edit_hologram matches 25 run function hologram:edit/rot/set_mode {mode:"yaw",enum:1}

# Rotation control 
execute if score @s edit_hologram matches 26 run function hologram:edit/rot/spin {amount:-45}
execute if score @s edit_hologram matches 27 run function hologram:edit/rot/spin {amount:-15}
execute if score @s edit_hologram matches 28 run function hologram:edit/rot/spin {amount:-1}
execute if score @s edit_hologram matches 29 run function hologram:edit/rot/reset
execute if score @s edit_hologram matches 30 run function hologram:edit/rot/spin {amount:1}
execute if score @s edit_hologram matches 31 run function hologram:edit/rot/spin {amount:15}
execute if score @s edit_hologram matches 32 run function hologram:edit/rot/spin {amount:45}

# Scale control
execute if score @s edit_hologram matches 33 run function hologram:edit/scale/sub_10
execute if score @s edit_hologram matches 34 run function hologram:edit/scale/reset
execute if score @s edit_hologram matches 35 run function hologram:edit/scale/add_10