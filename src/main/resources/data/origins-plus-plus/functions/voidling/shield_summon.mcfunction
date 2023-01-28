tag @s add supreme_shield
execute as @e[tag=supreme_shield_player_effect,type=minecraft:armor_stand] run kill @s
summon minecraft:armor_stand ~ ~100 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["supreme_shield_player_effect"]}