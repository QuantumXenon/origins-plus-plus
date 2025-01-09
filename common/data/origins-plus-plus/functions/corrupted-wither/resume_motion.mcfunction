execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s x
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s y
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s z
tag @s remove savedMotion
data merge entity @s {NoGravity:0b}