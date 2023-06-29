fill ~6 ~5 ~6 ~-6 ~-5 ~-6 minecraft:air replace minecraft:lava
fill ~7 ~5 ~7 ~-7 ~-5 ~-7 minecraft:air replace minecraft:fire
playsound minecraft:item.bucket.fill_lava player @a[distance=..10] ~ ~ ~ 1 1
particle minecraft:lava ~ ~2 ~ 3 3 3 0 500
resource change @s origins-plus-plus:dark-mage/resource -100
clear @s minecraft:magma_block 1