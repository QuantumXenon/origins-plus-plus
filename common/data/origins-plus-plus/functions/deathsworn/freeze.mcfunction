#something weird on origins powers' side is happening, so here's a function deduplication system. no biggie, everything gets reset in the end
execute if entity @s[tag=1] run function origins-plus-plus:deathsworn/freeze_apply
execute unless entity @s[tag=2] run tag @s add 1
tag @s remove 2