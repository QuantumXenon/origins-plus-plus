team add wizard-support
summon minecraft:vindicator ~ ~ ~ {Team:wizard-support,CustomName:'{"translate":"origins-plus-plus.light-mage.vindicator"}',DeathLootTable:"minecraft:empty",HandDropChances:[0f,0f]}
summon minecraft:vindicator ~ ~ ~ {Team:wizard-support,CustomName:'{"translate":"origins-plus-plus.light-mage.vindicator"}',DeathLootTable:"minecraft:empty",HandDropChances:[0f,0f]}
summon minecraft:vindicator ~ ~ ~ {Team:wizard-support,CustomName:'{"translate":"origins-plus-plus.light-mage.vindicator"}',DeathLootTable:"minecraft:empty",HandDropChances:[0f,0f]}
tag @e[type=minecraft:vindicator,distance=..10] add good

execute as @e[distance=..50,type=minecraft:vindicator,tag=good] run effect give @s minecraft:slow_falling 5 0 true
execute as @e[distance=..50,type=minecraft:vindicator,tag=good] run effect give @s minecraft:strength infinite 1 true
execute as @e[distance=..50,type=minecraft:vindicator,tag=good] run effect give @s minecraft:wither infinite 1 true
execute as @e[distance=..50,type=minecraft:vindicator,tag=good] run damage @s 10

team join wizard-support @e[distance=..50,type=minecraft:vindicator,tag=good]
team join wizard-support @e[distance=..100,type=player]
team join wizard-support @s

playsound minecraft:entity.illusioner.prepare_mirror master @s ~ ~ ~ 10 0.18
playsound minecraft:entity.vindicator.celebrate player @a[distance=..20] ~ ~ ~ 100 0.7