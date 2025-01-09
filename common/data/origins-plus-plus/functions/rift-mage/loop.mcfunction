execute as @e[type=minecraft:armor_stand,tag=Portality] at @s run particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 0.3 30
execute as @e[type=minecraft:armor_stand,tag=Portality] at @s run particle minecraft:end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 1

execute as @e[tag=Portality,tag=!Set_Portal] at @s store result score @s UUID1 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[0]
execute as @e[tag=Portality,tag=!Set_Portal] at @s store result score @s UUID2 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[1]
execute as @e[tag=Portality,tag=!Set_Portal] at @s store result score @s UUID3 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[2]
execute as @e[tag=Portality,tag=!Set_Portal] at @s store result score @s UUID4 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[3]
tag @e[tag=Portality,tag=!Set_Portal] add Set_Portal

execute as @e[type=minecraft:marker,tag=Ignore_Glass,scores={lpm_Num=2}] at @s run setblock ~ ~ ~ air
scoreboard players add @e[type=minecraft:marker,tag=Ignore_Glass] lpm_Num 1
execute as @e[type=minecraft:marker,tag=Ignore_Glass,scores={lpm_Num=2}] at @s if block ~ ~ ~ air run kill @s