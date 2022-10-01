

#---------------function calls start ---------------#

#ammo management
function lazergun:crossbow/ammo_handling


#---------------function calls end---------------#


kill @e[type=arrow, nbt={inGround:1b}]



execute as @e[type=arrow] run execute store result score @s arrowvel run data get entity @s Motion[0] 1000
execute as @e[type=arrow] run execute if score @s arrowvel matches -500..500 run kill @s