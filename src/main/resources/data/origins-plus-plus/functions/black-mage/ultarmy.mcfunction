team add badd
summon minecraft:vindicator ~ ~ ~ {Tag:"badd",Team:johnny,CustomName:"\"Johnny\"",DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:golden_sword,tag:{Enchantments:[{id:sharpness,lvl:3}]}},{Count:1,id:shield}],HandDropChances:[0f,0f]}
summon minecraft:vindicator ~ ~ ~ {Tag:"badd",Team:johnny,CustomName:"\"Johnny\"",DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:golden_sword,tag:{Enchantments:[{id:sharpness,lvl:3}]}},{Count:1,id:shield}],HandDropChances:[0f,0f]}
summon minecraft:zoglin ~ ~1 ~ {Team:badd,DeathLootTable:"minecraft:empty",CustomName:"\"WarZoglin\"",Passengers:[{id:vindicator,Team:badd,CustomName:"\"Johnny\"",DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:golden_sword,tag:{Enchantments:[{id:sharpness,lvl:3}]}},{Count:1,id:shield}],HandDropChances:[0f,0f]}]}
team join badd @s 
playsound minecraft:entity.zoglin.angry player @a[distance=..20] ~ ~ ~ 100 1.6
particle minecraft:end_rod ~ ~ ~ 2 2 2 2 100