

execute as @a if entity @s[scores={ammo=-1}] run xp set @s 0 levels
execute as @a if entity @s[scores={ammo=1}] run xp set @s 1 levels
execute as @a if entity @s[scores={ammo=2}] run xp set @s 2 levels
execute as @a if entity @s[scores={ammo=3}] run xp set @s 3 levels
execute as @a if entity @s[scores={ammo=4..}] run xp set @s 4 levels