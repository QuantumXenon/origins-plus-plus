execute at @e[distance=1..15] run setblock ~ ~ ~ origins:temporary_cobweb keep
execute at @e[distance=1..15] run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.3 0 0.3 0.001 100 normal
playsound minecraft:entity.spider.ambient player @a[distance=..15] ~ ~ ~ 1 0.7