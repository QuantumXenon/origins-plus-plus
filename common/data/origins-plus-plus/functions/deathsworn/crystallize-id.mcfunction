loot spawn ~ ~ ~ kill @s
tag @s remove Deathsworn_Prevent_Death
execute unless entity @s[type=player] run function origins-plus-plus:deathsworn/crystallize
execute if entity @s[type=player] run function origins-plus-plus:deathsworn/player_trophy
execute if entity @s[type=player] run tag @s add Deathsworn_Killed_Player
#spawn it on different location because the minion could pick up the dead player's items if it spawned on them
execute if entity @s[type=player] at @s positioned ~ -70 ~ summon skeleton run function origins-plus-plus:deathsworn/crystallize-player
execute if entity @s[type=player] run tag @s remove Deathsworn_Killed_Player
