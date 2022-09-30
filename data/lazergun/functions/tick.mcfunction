

#---------------function calls start ---------------#

#ammo management
function lazergun:crossbow/ammo_display
function lazergun:crossbow/no_ammo_check
function lazergun:crossbow/reload_delay_cooldown
execute as @a[scores={drop_crossbow=1..}] run function lazergun:crossbow/reload_delay

#---------------function calls end---------------#


kill @e[type=arrow, nbt={inGround:1b}]