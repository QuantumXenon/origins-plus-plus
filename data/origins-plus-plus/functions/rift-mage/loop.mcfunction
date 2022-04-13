execute as @e[type=armor_stand,tag=lpm_Portality] at @s run particle portal ~ ~ ~ 0.5 0.5 0.5 0.3 30
execute as @e[type=armor_stand,tag=lpm_Portality] at @s run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 1

# Link ID

execute as @e[tag=lpm_Portality,tag=!lpm_PortaSet] at @s store result score @s UUID1 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[0]
execute as @e[tag=lpm_Portality,tag=!lpm_PortaSet] at @s store result score @s UUID2 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[1]
execute as @e[tag=lpm_Portality,tag=!lpm_PortaSet] at @s store result score @s UUID3 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[2]
execute as @e[tag=lpm_Portality,tag=!lpm_PortaSet] at @s store result score @s UUID4 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[3]
tag @e[tag=lpm_Portality,tag=!lpm_PortaSet] add lpm_PortaSet

# marker glass

execute as @e[type=marker,tag=eraseglass,scores={lpm_Num=2}] at @s run setblock ~ ~ ~ air
scoreboard players add @e[type=marker,tag=eraseglass] lpm_Num 1
execute as @e[type=marker,tag=eraseglass,scores={lpm_Num=2}] at @s if block ~ ~ ~ air run kill @s