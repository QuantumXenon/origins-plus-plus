forceload add ~ ~
summon minecraft:armor_stand ~ ~1 ~4 {Invisible:1b,Tags:["back"],Invunerable:1b,NoGravity:1b,}
tag @e[distance=0..3] add tppocket
execute in minecraft:the_nether run tp @e[tag=tppocket] 777 189 777
effect give @e[tag=tppocket] minecraft:blindness 8 1
resource change @s origins-plus-plus:light-mage/resource -50