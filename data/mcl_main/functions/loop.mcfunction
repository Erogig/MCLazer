

#---------------function calls start ---------------#

#ammo management
function mcl_lazergun:ammo_handling


#---------------function calls end---------------#


effect give @a resistance 99999 127 true
effect give @a saturation 99999 127 true

kill @e[type=arrow, nbt={inGround:1b}]


execute as @e[type=arrow] run execute store result score @s arrowvel1 run data get entity @s Motion[0] 1000
execute as @e[type=arrow] run execute store result score @s arrowvel2 run data get entity @s Motion[2] 1000
execute as @e[type=arrow] run execute if score @s arrowvel1 matches -500..500 if score @s arrowvel2 matches -500..500 run kill @s