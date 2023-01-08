summon minecraft:salmon ~ ~ ~ {NoAI:1,DeathLootTable:"minecraft:empty",CustomName:'{"translate":"origins-plus-plus.dark-mage.salmon"}',Invisible:1b,Tags:["Explosive_Salmon"],Invunerable:1b,NoGravity:1b,}
power grant @e[type=minecraft:salmon,tag=Explosive_Salmon,sort=nearest,limit=1] origins-plus-plus:dark-mage/salmon_explode
kill @e[distance=..3,type=minecraft:salmon]