particle minecraft:witch ~ ~ ~ 1 1 1 1 100
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["tp"],Invunerable:1b,NoGravity:1b,}
playsound minecraft:block.beacon.activate player @a[distance=..20] ~ ~ ~ 100 2
forceload add ~ ~
resource change @s origins-plus-plus:end-mage/resource -100