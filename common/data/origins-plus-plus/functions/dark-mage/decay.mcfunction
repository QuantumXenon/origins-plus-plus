effect give @e[distance=1..16] minecraft:wither 1 3
effect give @e[distance=1..16] minecraft:slowness 1 4
particle minecraft:dust 0 0 0 2 ~ ~ ~ 4 4 4 100 30
particle minecraft:ash ~ ~ ~ 2 2 2 2 10
playsound minecraft:entity.strider.death player @a[distance=..10] ~ ~ ~ 100 0.5 1
resource change @s origins-plus-plus:dark-mage/resource -100
clear @s minecraft:wither_rose 1