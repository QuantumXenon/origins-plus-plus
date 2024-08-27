forceload add ~ ~
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["back"],Invunerable:1b,NoGravity:1b,}
execute in minecraft:the_nether run tp @s 777 189 777
effect give @s minecraft:blindness 8 1
resource change @s origins-plus-plus:light-mage/resource -50
execute positioned 777 200 777 run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 minecraft:barrier hollow
execute positioned 777 200 777 run fill ~-14 ~-14 ~-14 ~14 ~14 ~14 minecraft:black_concrete hollow
execute positioned 777 200 777 run fill ~-13 ~-13 ~-13 ~13 ~13 ~13 minecraft:barrier hollow
resource set @s origins-plus-plus:light-mage/pocket_dimension_exists 1