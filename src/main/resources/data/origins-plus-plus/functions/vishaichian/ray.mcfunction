execute unless block ~ ~ ~ #origins-plus-plus:non_solid run function origins-plus-plus:vishaichian/hit_block
execute if score #hit Vishaichian matches 0 as @e[tag=!chainray,distance=..1.5] at @s run function origins-plus-plus:vishaichian/hit_entity
scoreboard players add #distance Vishaichian 1
execute if score #hit Vishaichian matches 0 if score #distance Vishaichian matches ..75 positioned ^ ^ ^0.1 run function origins-plus-plus:vishaichian/ray
particle minecraft:dust 0.035 1 0 1 ~ ~ ~ 0.5 0.1 0.5 1 1 normal
particle minecraft:dust 0 1 0.165 1 ~ ~ ~ 0.5 0.1 0.5 1 1 normal
particle minecraft:dust 0 1 0 1 ~ ~ ~ 0.5 0.1 0.5 1 1 normal
particle minecraft:dust 0 1 0.051 1 ~ ~ ~ 0.5 0.1 0.5 1 1 normal
particle minecraft:dust 0.082 1 0 1 ~ ~ ~ 0.5 0.1 0.5 1 1 normal
particle minecraft:dust 0.282 1 0 1 ~ ~ ~ 0.5 0.1 0.5 1 1 normal