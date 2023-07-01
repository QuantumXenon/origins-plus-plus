tp @s @e[type=minecraft:armor_stand,tag=back,sort=nearest,limit=1]
forceload remove ~ ~
kill @e[distance=0..3,type=minecraft:armor_stand,tag=back]
effect give @s minecraft:blindness 8 1
effect give @s minecraft:slow_falling 30 1
particle minecraft:dust 0 0 0 3 ~ ~ ~ 2 2 1 10 100
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..20] ~ ~ ~ 100 2 1
resource change @s origins-plus-plus:light-mage/resource -50