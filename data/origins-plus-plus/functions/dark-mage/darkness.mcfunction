effect give @e[distance=1..15] minecraft:blindness 40 0
effect give @e[distance=1..15] minecraft:slowness 40 2
particle minecraft:dust 0 0 0 2 ~ ~ ~ 3 3 3 100 1000
particle minecraft:ash ~ ~ ~ 2 2 2 2 300
playsound minecraft:entity.squid.squirt player @a[distance=..10] ~ ~ ~ 100 0.5 1
resource change @s origins-plus-plus:dark-mage/resource -100
clear @s minecraft:ink_sac 1