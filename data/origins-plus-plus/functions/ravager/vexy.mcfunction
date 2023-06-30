execute as @s run summon minecraft:vex ~ ~0.5 ~ {Team:ravager,HandItems:[{Count:1,id:"minecraft:iron_axe"},{}],ActiveEffects:[{Id:5,Amplifier:1,Duration:999999},{Id:20,Amplifier:0,Duration:999999}]}
execute as @s run summon minecraft:vex ~ ~0.5 ~ {Team:ravager,HandItems:[{Count:1,id:"minecraft:iron_axe"},{}],ActiveEffects:[{Id:5,Amplifier:1,Duration:999999},{Id:20,Amplifier:0,Duration:999999}]}
execute as @s run summon minecraft:vex ~ ~0.5 ~ {Team:ravager,HandItems:[{Count:1,id:"minecraft:iron_axe"},{}],ActiveEffects:[{Id:5,Amplifier:1,Duration:999999},{Id:20,Amplifier:0,Duration:999999}]}

playsound minecraft:entity.illusioner.prepare_mirror master @s ~ ~ ~ 10 0.18
execute at @e[type=minecraft:vex] run summon minecraft:snowball ~ ~1.5 ~ {Motion:[0.0,-1.0,0.0],damage:0,life:1200}

data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:blaze,limit=1] UUID-----
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:cave_spider,limit=1] UUID-----
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:drowned,limit=1] UUID-----
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:elder_guardian,limit=1] UUID
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:enderman,limit=1] UUID-----
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:endermite,limit=1] UUID
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:ghast,limit=1] UUID-----
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:guardian,limit=1] UUID
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:husk,limit=1] UUID-----
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:iron_golem,limit=1] UUID
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:magma_cube,limit=1] UUID
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:phantom,limit=1] UUID-----
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:shulker,limit=1] UUID
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:silverfish,limit=1] UUID
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:skeleton,limit=1] UUID-----
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:slime,limit=1] UUID
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:spider,limit=1] UUID-----
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:stray,limit=1] UUID-----
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:wither_skeleton,limit=1] UUID
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:zoglin,limit=1] UUID
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:zombie,limit=1] UUID-----
data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=minecraft:zombie_villager,limit=1] UUID-----

playsound minecraft:entity.vex.charge player @s