#deal 0 dmg, but no kb
execute as @e[tag=Commanded_Minion] run attribute @s minecraft:generic.knockback_resistance modifier add 1-1-1-1-1 nokb 100 add
execute as @e[tag=Commanded_Minion] run damage @s 0 minecraft:cramming by @e[limit=1,sort=nearest,tag=Target]
execute as @e[tag=Commanded_Minion] run attribute @s minecraft:generic.knockback_resistance modifier remove 1-1-1-1-1

execute as @e[tag=Commanded_Minion,limit=1] at @s run playsound minecraft:entity.ravager.roar hostile @a[distance=..16] ~ ~ ~ 1.2 2
tag @a remove Commander_Actor
tag @s remove Commanded_Minion

say aggro