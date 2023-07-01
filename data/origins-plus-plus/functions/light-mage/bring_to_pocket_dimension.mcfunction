forceload add ~ ~
summon minecraft:armor_stand ~ ~1 ~4 {Invisible:1b,Tags:["back"],Invunerable:1b,NoGravity:1b,}
team add tp
tag @e[distance=0..3] add tppocket
execute in minecraft:the_nether run tp @e[tag=tppocket] 777 189 777
effect give @e[tag=tppocket] minecraft:blindness 8 1
particle minecraft:dust 0 0 0 3 ~ ~ ~ 2 2 1 10 100
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..20] ~ ~ ~ 100 2 1
resource change @s origins-plus-plus:light-mage/resource -50