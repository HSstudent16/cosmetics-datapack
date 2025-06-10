# Fail if max steps have been taken
execute if score #lib.raycast.step var >= #lib.raycast.max_steps var run return fail

# Check current block
$execute if block ~ ~ ~ $(target) run function $(callback) with block ~ ~ ~
$execute if block ~ ~ ~ $(target) run return run scoreboard players get #lib.raycast.step var

# Advance by .125 blocks if current block does not match target
$execute positioned ^ ^ ^.125 run function lib:raycast/loop/step {callback:"$(callback)",target:"$(target)"}