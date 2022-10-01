

execute unless score @s ammodelay matches 1.. run scoreboard players set @s ammodelay 80
item replace entity @s weapon.mainhand with minecraft:crossbow{Charged:0b} 1
execute at @s run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:crossbow",Count:1b}}]
scoreboard players set @s drop_crossbow 0