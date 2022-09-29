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

