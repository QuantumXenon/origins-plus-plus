gamerule showDeathMessages false
tag @s add chainray
scoreboard players set #hit Wandering_Spirit 0
scoreboard players set #distance Wandering_Spirit 0
execute positioned ~ ~1.3 ~ run function origins-plus-plus:wandering-spirit/ray
tag @s remove chainray