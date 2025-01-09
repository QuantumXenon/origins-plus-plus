particle minecraft:falling_water ~ ~ ~ 1 0.5 1 0 999
particle minecraft:falling_water ~ ~ ~ 5 0.5 5 0 999
playsound minecraft:entity.player.splash.high_speed voice @a ~ ~ ~ 9 0.5
kill @e[type=minecraft:enderman,distance=..5]
resource change @s origins-plus-plus:automaton/waterbar -5000
particle minecraft:falling_water ~ ~.5 ~ 0.5 1 0.5 9 25 force