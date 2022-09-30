execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow", tag:{Charged:0b}}}] if entity @s[scores={ammo=0..}] run scoreboard players remove @s ammo 1
execute as @a if entity @s[scores={ammo=-1}] run xp set @s 0 points
execute as @a if entity @s[scores={ammo=1}] run xp set @s 2 points
execute as @a if entity @s[scores={ammo=2}] run xp set @s 4 points
execute as @a if entity @s[scores={ammo=3}] run xp set @s 6 points
execute as @a if entity @s[scores={ammo=3}] run xp set @s 0 levels
execute as @a if entity @s[scores={ammo=4..}] run xp set @s 1 levels
execute if entity @s[scores={ammo=4..}] run xp set @s 0 points
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow", tag:{Charged:0b}}}] if entity @s[scores={ammo=0..}] run item modify entity @s weapon lazergun:reload_crossbow
execute as @a[scores={ammo=0}] run scoreboard players set @s ammo -1

#Do No-gravity On Arrows

execute at @a[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run execute as @e[type=arrow,distance=..2] run data merge entity @s {NoGravity:1b}

# reload on drop

execute as @a run execute at @s if entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:crossbow",Count:1b,tag:{Charged:0b}}}] run execute unless score @s ammodelay matches 1.. run scoreboard players set @s ammodelay 80
execute as @a run execute at @s if entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:crossbow",Count:1b,tag:{Charged:0b}}}] run item replace entity @s weapon.mainhand with minecraft:crossbow{Charged:0b} 1
execute as @a run execute at @s if entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:crossbow",Count:1b,tag:{Charged:0b}}}] run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:crossbow",Count:1b,tag:{Charged:0b}}}]

# Reload countdown
scoreboard players remove @a[scores={ammodelay=1..}] ammodelay 1
execute as @a[scores={ammodelay=1}] run scoreboard players set @s ammo 5
