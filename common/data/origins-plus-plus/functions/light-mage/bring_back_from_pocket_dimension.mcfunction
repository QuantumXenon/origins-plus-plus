tag @e[distance=0..3] add tppocket
tp @e[tag=tppocket] @e[type=minecraft:armor_stand,tag=back,sort=nearest,limit=1]
forceload remove ~ ~
effect give @e[tag=tppocket] minecraft:blindness 6 1
effect give @e[tag=tppocket] minecraft:slow_falling 100 1
resource change @s origins-plus-plus:light-mage/resource -50