effect give @e[distance=..6] minecraft:fire_resistance 100 0
particle minecraft:dust 1 0.4 0 2 ~ ~ ~ 2 2 2 10 100
playsound minecraft:block.lava.extinguish player @a[distance=..20] ~ ~ ~ 100 1.4 1
resource change @s origins-plus-plus:light-mage/resource -100
clear @s minecraft:magma_cream 1