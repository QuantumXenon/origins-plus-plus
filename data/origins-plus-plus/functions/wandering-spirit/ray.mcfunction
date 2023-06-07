execute if score #hit Wandering_Spirit matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#origins-plus-plus:entities,tag=!chainray,dx=0,sort=nearest] run function origins-plus-plus:wandering-spirit/check_hit_entity
execute unless block ~ ~ ~ #origins-plus-plus:non_solid run function origins-plus-plus:wandering-spirit/hit_block
scoreboard players add #distance Wandering_Spirit 1
execute if score #hit Wandering_Spirit matches 0 if score #distance Wandering_Spirit matches ..800 positioned ^ ^ ^0.5 run function origins-plus-plus:wandering-spirit/ray