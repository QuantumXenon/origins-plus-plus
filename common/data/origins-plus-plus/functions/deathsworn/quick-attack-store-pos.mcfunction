execute if data storage origins-plus-plus:temp temppos1 run data remove storage origins-plus-plus:temp pos1
data remove storage origins-plus-plus:temp temppos1

tp ^ ^ ^

data merge entity @s {Marker:true}
tag @s add Deathsworn_Marker

#execute if data storage origins-plus-plus:temp pos1 run tag @s add pos2
#execute unless data storage origins-plus-plus:temp pos1 run tag @s add pos1

execute if data storage origins-plus-plus:temp pos1 run data modify storage origins-plus-plus:temp pos2 set from entity @s Pos
execute unless data storage origins-plus-plus:temp pos1 run data modify storage origins-plus-plus:temp pos1 set from entity @s Pos

execute if data storage origins-plus-plus:temp pos2 run function origins-plus-plus:deathsworn/quick-attack-speed-calc

execute if data storage origins-plus-plus:temp pos2 run data remove storage origins-plus-plus:temp pos1

kill