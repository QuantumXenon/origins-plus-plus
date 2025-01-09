scoreboard objectives add food dummy
scoreboard players set #hit Glacier 1
summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1b,Particle:mobSpell,Radius:0.8f,RadiusOnUse:0.8f,Duration:20,Color:3599359,Effects:[{Id:2,Amplifier:100,Duration:100,ShowParticles:0b}]}
summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1b,Particle:mobSpell,Radius:0.8f,RadiusOnUse:0.8f,Duration:20,Color:3599359,Effects:[{Id:7,Amplifier:0,Duration:2,ShowParticles:0b}]}