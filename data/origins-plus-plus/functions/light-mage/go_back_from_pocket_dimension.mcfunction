tp @s @e[type=minecraft:armor_stand,tag=back,sort=nearest,limit=1]
forceload remove ~ ~
effect give @s minecraft:blindness 8 1
effect give @s minecraft:slow_falling 30 1
resource change @s origins-plus-plus:light-mage/resource -50