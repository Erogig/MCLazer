execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow", tag:{Charged:0b}}}] run item modify entity @s weapon lazergun:reload_crossbow
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b}}] run execute at @s run execute as @e[type=arrow,distance=..5] run data merge entity @s {NoGravity:1b}


