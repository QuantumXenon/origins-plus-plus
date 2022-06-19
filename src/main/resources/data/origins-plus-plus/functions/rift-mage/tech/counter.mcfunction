execute store result entity @s Motion[1] double 1 run data get entity @s Motion[1] -0
execute store result entity @s Motion[0] double 1 run data get entity @s Motion[1] -0
execute store result entity @s Motion[2] double 1 run data get entity @s Motion[1] -0

setblock ~ ~ ~ glass keep
summon marker ~ ~ ~ {Tags:["eraseglass"]}