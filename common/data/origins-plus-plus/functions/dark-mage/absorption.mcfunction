effect give @s minecraft:absorption 30 2
effect give @s minecraft:resistance 30 0
particle minecraft:dust 1 1 0 2 ~ ~ ~ 0.3 1 0.3 1 200
particle minecraft:ash ~ ~ ~ 2 2 2 2 10
playsound minecraft:block.amethyst_block.chime player @a[distance=..10] ~ ~ ~ 100 2 1
resource change @s origins-plus-plus:dark-mage/resource -100
clear @s minecraft:golden_apple 1