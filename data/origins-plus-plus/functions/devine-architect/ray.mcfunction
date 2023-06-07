execute unless block ~ ~ ~ #origins-plus-plus:non_solid run function origins-plus-plus:devine-architect/hit_block
execute if score #hit Devine_Architect matches 0 as @e[tag=!chainray,distance=..1.5] at @s run function origins-plus-plus:devine-architect/hit_entity
scoreboard players add #distance Devine_Architect 1
execute if score #hit Devine_Architect matches 0 if score #distance Devine_Architect matches ..400 positioned ^ ^ ^0.1 run function origins-plus-plus:devine-architect/ray
particle minecraft:dust 1 1 1 .7 ~ ~ ~ 0.1 0.1 0.1 1 1 normal