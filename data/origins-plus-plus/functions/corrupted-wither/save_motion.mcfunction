execute store result score @s x run data get entity @s Motion[0] 10000
execute store result score @s y run data get entity @s Motion[1] 10000
execute store result score @s z run data get entity @s Motion[2] 10000

tag @s add savedMotion
data merge entity @s {NoGravity:1b}

execute store result entity @s Motion[0] double 0.00001 run scoreboard players get @s x
execute store result entity @s Motion[1] double 0.00001 run scoreboard players get @s y
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get @s z