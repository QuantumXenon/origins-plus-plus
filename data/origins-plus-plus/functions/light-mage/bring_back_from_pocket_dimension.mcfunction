tag @e[distance=0..3] add tppocket
tp @e[tag=tppocket] @e[type=minecraft:armor_stand,tag=back,sort=nearest,limit=1]
forceload remove ~ ~
tag @e[distance=0..3] remove tppocket
kill @e[distance=..5,type=minecraft:armor_stand,tag=back]
effect give @e[tag=tppocket] minecraft:blindness 6 1
effect give @e[tag=tppocket] minecraft:slow_falling 100 1
particle minecraft:dust 0 0 0 3 ~ ~ ~ 2 2 1 10 100
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..20] ~ ~ ~ 100 2 1
resource change @s origins-plus-plus:light-mage/resource -50