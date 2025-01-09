effect give @e[distance=..6] minecraft:haste 60 1
effect give @e[distance=..6] minecraft:speed 60 1
particle minecraft:dust 1 1 0 3 ~ ~ ~ 2 2 1 10 100
playsound minecraft:entity.lightning_bolt.impact player @a[distance=..20] ~ ~ ~ 100 2 1
resource change @s origins-plus-plus:light-mage/resource -100
clear @s minecraft:clock 1