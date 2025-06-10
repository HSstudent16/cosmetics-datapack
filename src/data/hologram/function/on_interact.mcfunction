advancement revoke @s only hologram:use_lectern

# Fail if permissions are not set
execute if data storage permissions:config {hologram:false} run tellraw @s {text:"You do not have permission to create holograms!",color:dark_red}
execute if data storage permissions:config {hologram:false} run return fail

# Raycast to get the lectern
execute anchored eyes positioned ^ ^ ^ run function lib:raycast/start {callback:"hologram:callback",target:"minecraft:lectern"}