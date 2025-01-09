execute store result score @s UUID0 run data get entity @s UUID[0]
execute store result score @s UUID1 run data get entity @s UUID[1]
execute store result score @s UUID2 run data get entity @s UUID[2]
execute store result score @s UUID3 run data get entity @s UUID[3]

summon minecraft:marker ~ ~ ~ {Tags:["Point"]}

execute store result score @e[type=minecraft:marker,tag=Point,distance=..1,limit=1,sort=nearest] UUID0 run data get entity @s UUID[0]
execute store result score @e[type=minecraft:marker,tag=Point,distance=..1,limit=1,sort=nearest] UUID1 run data get entity @s UUID[1]
execute store result score @e[type=minecraft:marker,tag=Point,distance=..1,limit=1,sort=nearest] UUID2 run data get entity @s UUID[2]
execute store result score @e[type=minecraft:marker,tag=Point,distance=..1,limit=1,sort=nearest] UUID3 run data get entity @s UUID[3]