summon minecraft:zombie ~ ~ ~1 {Attributes:[{Name:"generic.attack_damage",Base:1}],Silent:1,ArmorItems:[{},{},{},{Count:1b,id:"minecraft:carved_pumpkin"}],IsBaby:1b,Invulnerable:1,Tags:["temp","JackoMinion"],DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14,Duration:1000000,Ambient:1,ShowParticles:1},{Id:18,Duration:1000000,Ambient:1,Amplifier:2,ShowParticles:1}],Passengers:[{id:"wolf",Attributes:[{Name:"generic.attack_damage",Base:1}],Invulnerable:1,Silent:1,ActiveEffects:[{Id:14,Duration:1000000,Ambient:1,ShowParticles:1},{Id:18,Duration:1000000,Ambient:1,Amplifier:2,ShowParticles:1}],Tags:["JackoMinion","temp"]}]}
summon minecraft:zombie ~1 ~ ~-1 {Attributes:[{Name:"generic.attack_damage",Base:1}],Silent:1,ArmorItems:[{},{},{},{Count:1b,id:"minecraft:carved_pumpkin"}],IsBaby:1b,Invulnerable:1,Tags:["temp","JackoMinion"],DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14,Duration:1000000,Ambient:1,ShowParticles:1},{Id:18,Duration:1000000,Ambient:1,Amplifier:2,ShowParticles:1}],Passengers:[{id:"wolf",Attributes:[{Name:"generic.attack_damage",Base:1}],Invulnerable:1,Silent:1,ActiveEffects:[{Id:14,Duration:1000000,Ambient:1,ShowParticles:1},{Id:18,Duration:1000000,Ambient:1,Amplifier:2,ShowParticles:1}],Tags:["JackoMinion","temp"]}]}
summon minecraft:zombie ~-1 ~ ~ {Attributes:[{Name:"generic.attack_damage",Base:1}],Silent:1,ArmorItems:[{},{},{},{Count:1b,id:"minecraft:carved_pumpkin"}],IsBaby:1b,Invulnerable:1,Tags:["temp","JackoMinion"],DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14,Duration:1000000,Ambient:1,ShowParticles:1},{Id:18,Duration:1000000,Ambient:1,Amplifier:2,ShowParticles:1}],Passengers:[{id:"wolf",Attributes:[{Name:"generic.attack_damage",Base:1}],Invulnerable:1,Silent:1,ActiveEffects:[{Id:14,Duration:1000000,Ambient:1,ShowParticles:1},{Id:18,Duration:1000000,Ambient:1,Amplifier:2,ShowParticles:1}],Tags:["JackoMinion","temp"]}]}
execute at @s run particle dust 1 .5 .1 1 ~ ~.2 ~ 0.65 0.3 0.65 0 200

scoreboard players operation @s jackoID += #fakeMax jackoID
scoreboard players operation @e[tag=JackoMinion,tag=temp,limit=6] jackoID += #fakeMax jackoID
data modify entity @e[tag=JackoMinion,tag=temp,type=wolf,limit=1,distance=..4.5] Owner set from entity @s UUID
execute as @e[type=minecraft:wolf,tag=temp,tag=JackoMinion,limit=1] if score @s jackoID = #fakeMax jackoID run tag @s remove temp
data modify entity @e[tag=JackoMinion,tag=temp,type=wolf,limit=1,distance=..4.5] Owner set from entity @s UUID
execute as @e[type=minecraft:wolf,tag=temp,tag=JackoMinion,limit=1] if score @s jackoID = #fakeMax jackoID run tag @s remove temp
data modify entity @e[tag=JackoMinion,tag=temp,type=wolf,limit=1,distance=..4.5] Owner set from entity @s UUID
execute as @e[type=minecraft:wolf,tag=temp,tag=JackoMinion,limit=1] if score @s jackoID = #fakeMax jackoID run tag @s remove temp
execute as @e[type=minecraft:zombie,tag=temp,tag=JackoMinion,limit=3] if score @s jackoID = #fakeMax jackoID run tag @s remove temp
execute as @e[type=minecraft:wolf,tag=JackoMinion,limit=1] if score @s jackoID = #fakeMax jackoID run scoreboard players add #fakeMax jackoID 1

