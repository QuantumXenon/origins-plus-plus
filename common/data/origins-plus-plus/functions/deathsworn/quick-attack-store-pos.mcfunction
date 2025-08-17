#execute if data storage origins-plus-plus:temp pos1 run tag @s add pos2
#execute unless data storage origins-plus-plus:temp pos1 run tag @s add pos1

execute if data storage origins-plus-plus:temp Motion run kill

execute if data storage origins-plus-plus:temp pos1 run data modify storage origins-plus-plus:temp pos2 set from entity @s Pos
execute unless data storage origins-plus-plus:temp pos2 run data modify storage origins-plus-plus:temp pos1 set from entity @s Pos

execute if data storage origins-plus-plus:temp pos1 run tellraw @a [{"text":"pos1:"},{"nbt":"Pos","entity":"@s"}]
execute if data storage origins-plus-plus:temp pos2 run tellraw @a [{"text":"pos2:"},{"nbt":"Pos","entity":"@s"}]

say store