summon minecraft:skeleton_horse ~ ~ ~1 {Tame:1,SaddleItem:{id:"saddle",Count:1},Attributes:[{Name:"generic.movement_speed",Base:0.4d}],Invulnerable:1,Tags:["temp","steed"],DeathLootTable:"minecraft:empty"}
execute at @s run particle dust 1 .5 .1 1 ~ ~.2 ~ 0.65 0.3 0.65 0 200

scoreboard players operation @s Nightmare += #fakeMax Nightmare
scoreboard players operation @e[tag=steed,tag=temp,limit=2] Nightmare += #fakeMax Nightmare
execute as @e[type=minecraft:skeleton_horse,tag=temp,tag=steed,limit=1] if score @s Nightmare = #fakeMax Nightmare run tag @s remove temp
execute as @e[type=minecraft:skeleton_horse,tag=steed,limit=1] if score @s Nightmare = #fakeMax Nightmare run scoreboard players add #fakeMax Nightmare 1

