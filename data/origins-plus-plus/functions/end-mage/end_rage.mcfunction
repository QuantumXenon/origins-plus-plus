effect give @e[distance=..6] minecraft:speed 60 1
effect give @e[distance=..6] minecraft:strength 60 0
particle minecraft:witch ~1 ~ ~1 0 3 0 1 100
particle minecraft:witch ~-1 ~ ~-1 0 3 0 1 100
particle minecraft:witch ~-1 ~ ~1 0 3 0 1 100
particle minecraft:witch ~1 ~ ~-1 0 3 0 1 100
particle minecraft:portal ~ ~ ~ 3 3 3 1 1000
playsound minecraft:block.beacon.power_select player @a[distance=..20] ~ ~ ~ 100 1.7 1
resource change @s origins-plus-plus:end-mage/resource -100