execute as @s run summon minecraft:vex ~ ~0.5 ~ {Team:ravager,HandItems:[{Count:1,id:"minecraft:iron_axe"},{}],ActiveEffects:[{Id:5,Amplifier:1,Duration:999999},{Id:20,Amplifier:0,Duration:999999}]}
execute as @s run summon minecraft:vex ~ ~0.5 ~ {Team:ravager,HandItems:[{Count:1,id:"minecraft:iron_axe"},{}],ActiveEffects:[{Id:5,Amplifier:1,Duration:999999},{Id:20,Amplifier:0,Duration:999999}]}
execute as @s run summon minecraft:vex ~ ~0.5 ~ {Team:ravager,HandItems:[{Count:1,id:"minecraft:iron_axe"},{}],ActiveEffects:[{Id:5,Amplifier:1,Duration:999999},{Id:20,Amplifier:0,Duration:999999}]}

playsound minecraft:entity.illusioner.prepare_mirror master @s ~ ~ ~ 10 0.18
execute at @e[type=minecraft:vex] run summon minecraft:snowball ~ ~1.5 ~ {Motion:[0.0,-1.0,0.0],damage:0,life:1200}

data modify entity @e[type=minecraft:snowball,limit=1] Owner set from entity @e[type=#origins-plus-plus:hostile_mobs,limit=1] UUID

playsound minecraft:entity.vex.charge player @s