

# Reload countdown
scoreboard players remove @a[scores={ammodelay=1..}] ammodelay 1
execute as @a[scores={ammodelay=1}] run scoreboard players set @s ammo 5
execute as @a[scores={ammodelay=1}] run item modify entity @s weapon lazergun:reload_crossbow
