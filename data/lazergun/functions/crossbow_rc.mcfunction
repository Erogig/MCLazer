execute if entity @s[scores={ammo=0..}] run scoreboard players remove @s ammo 1
execute if entity @s[scores={ammo=4..}] run xp set @s 0 points
execute if entity @s[scores={ammo=0..}] run item modify entity @s weapon lazergun:reload_crossbow
execute as @a[scores={ammo=0}] run scoreboard players set @s ammo -1

#Do No-gravity On Arrows

execute at @a[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run execute as @e[type=arrow,distance=..2] run data merge entity @s {NoGravity:1b}
say hello1