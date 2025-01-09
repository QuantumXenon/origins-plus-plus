tp @s @e[type=minecraft:armor_stand,tag=tp,sort=nearest,limit=1]
kill @e[distance=..2,type=minecraft:armor_stand]
forceload remove ~ ~
playsound minecraft:block.beacon.deactivate player @a[distance=..20] ~ ~ ~ 100 2
resource change @s origins-plus-plus:end-mage/resource -100