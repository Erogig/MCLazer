

execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run execute if score @s ammo matches -1 run execute unless score @s ammodelay matches 1.. run scoreboard players set @s ammodelay 80
