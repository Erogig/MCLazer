# Auto reload can be found within lazergun:crossbow/right_click


# ammo display
execute as @a if entity @s[scores={ammo=-1}] run xp set @s 0 levels
execute as @a if entity @s[scores={ammo=1}] run xp set @s 1 levels
execute as @a if entity @s[scores={ammo=2}] run xp set @s 2 levels
execute as @a if entity @s[scores={ammo=3}] run xp set @s 3 levels
execute as @a if entity @s[scores={ammo=4..}] run xp set @s 4 levels

# reload display



# Reload countdown
scoreboard players remove @a[scores={ammodelay=1..}] ammodelay 1
execute as @a[scores={ammodelay=1}] run scoreboard players set @s ammo 4
execute as @a[scores={ammodelay=1}] run item replace entity @s hotbar.0 with crossbow
execute as @a[scores={ammodelay=1}] run item modify entity @s hotbar.0 mcl_lazergun:reload


# reload delay
execute as @a[scores={drop_crossbow=1..}] run execute unless score @s ammodelay matches 1.. run scoreboard players set @s ammodelay 80
execute as @a[scores={drop_crossbow=1..}] run item replace entity @s weapon.mainhand with minecraft:crossbow{Charged:0b} 1
execute as @a[scores={drop_crossbow=1..}] run execute at @s run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:crossbow",Count:1b}}]
execute as @a[scores={drop_crossbow=1..}] run scoreboard players set @s drop_crossbow 0
