effect give @e[distance=..50] minecraft:glowing 20 0
effect give @e[distance=..8] minecraft:night_vision 220 0
particle minecraft:end_rod ~ ~ ~ 2 2 2 10 100
playsound minecraft:block.note_block.chime player @a[distance=..20] ~ ~ ~ 100 2 1
resource change @s origins-plus-plus:light-mage/resource -100
clear @s minecraft:glowstone_dust 1