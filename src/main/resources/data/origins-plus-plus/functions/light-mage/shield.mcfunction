team add light-mage
summon minecraft:vindicator ~ ~ ~ {Tag:"good",Team:light-mage,CustomName:'{"translate":"origins-plus-plus.light-mage.vindicator"}',DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:sharpness",lvl:3}]}},{Count:1,id:"minecraft:shield"}],HandDropChances:[0f,0f]}
summon minecraft:vindicator ~ ~ ~ {Tag:"good",Team:light-mage,CustomName:'{"translate":"origins-plus-plus.light-mage.vindicator"}',DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:sharpness",lvl:3}]}},{Count:1,id:"minecraft:shield"}],HandDropChances:[0f,0f]}
team join light-mage @e[distance=..50,type=minecraft:vindicator,tag=good]
team join light-mage @s
playsound minecraft:entity.vindicator.celebrate player @a[distance=..20] ~ ~ ~ 100 0.7
particle minecraft:end_rod ~ ~ ~ 2 2 2 2 100