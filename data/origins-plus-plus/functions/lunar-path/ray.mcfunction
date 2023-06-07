execute if score #hit Lunar_Path matches 0 as @e[tag=!chainray,distance=..1.5] at @s run function origins-plus-plus:lunar-path/hit_entity
scoreboard players add #distance Lunar_Path 1
execute if score #hit Lunar_Path matches 0 if score #distance Lunar_Path matches ..400 positioned ^ ^ ^0.1 run function origins-plus-plus:lunar-path/ray
particle minecraft:dust 0 0 0 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
particle minecraft:dust 0.086 0 0 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
particle minecraft:dust 0.086 0.027 0.027 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
particle minecraft:dust 0.067 0.02 0.02 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
particle minecraft:dust 0.212 0.212 0.212 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
particle minecraft:dust 0.18 0.165 0.161 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
particle minecraft:dust 0 0 0 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
particle minecraft:dust 0.188 0.165 0.165 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
particle minecraft:dust 0.145 0.118 0.114 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
particle minecraft:dust 0.047 0.024 0.024 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
particle minecraft:wax_off ~ ~ ~ 0.1 0.1 0.1 1 1 normal