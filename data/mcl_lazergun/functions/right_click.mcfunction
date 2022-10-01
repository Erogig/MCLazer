

execute if score @s ammo matches 0.. run scoreboard players remove @s ammo 1
execute if score @s ammo matches 4.. run xp set @s 0 points
execute if score @s ammo matches -1.. run item replace entity @s hotbar.0 with crossbow
execute if score @s ammo matches 0.. run item modify entity @s hotbar.0 mcl_lazergun:reload
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{Charged:0b}}}] if score @s ammo matches 0 run scoreboard players set @s ammo -1

#Auto Reload
execute if score @s ammo matches -1 run execute unless score @s ammodelay matches 1.. run scoreboard players set @s ammodelay 70

#Do No-gravity On Arrows
execute at @s run execute as @e[type=arrow,distance=..2] run data merge entity @s {NoGravity:1b}

#revoke advancement
advancement revoke @s only mcl_lazergun:shot