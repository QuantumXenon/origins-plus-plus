gamerule showDeathMessages false
execute as @e[tag=Dullahan_Horse,type=minecraft:skeleton_horse] if score @s Nightmare = @p Nightmare run item replace entity @s horse.saddle with air
execute as @e[tag=Dullahan_Horse,type=minecraft:skeleton_horse] if score @s Nightmare = @p Nightmare run kill @s
scoreboard players reset @s Nightmare
gamerule showDeathMessages true