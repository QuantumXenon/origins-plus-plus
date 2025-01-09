forceload add ~ ~
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["back"],Invunerable:1b,NoGravity:1b,}
execute in minecraft:the_nether run tp @s 777 189 777
effect give @s minecraft:blindness 8 1
resource change @s origins-plus-plus:light-mage/resource -50