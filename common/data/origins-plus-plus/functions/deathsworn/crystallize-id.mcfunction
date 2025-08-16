execute unless entity @s[type=player] run function origins-plus-plus:deathsworn/crystallize
execute if entity @s[type=player] run tag @s add Deathsworn_Killed_Player
execute if entity @s[type=player] summon skeleton run function origins-plus-plus:deathsworn/crystallize-player