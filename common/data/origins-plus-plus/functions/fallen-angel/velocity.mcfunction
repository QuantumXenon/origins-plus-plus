playsound minecraft:block.fire.extinguish ambient @s ~ ~ ~ 0.5 0.8
summon area_effect_cloud ~ ~ ~ {Duration:60,Radius:3.5f,RadiusOnUse:0.5f,RadiusPerTick:0.0f,WaitTime:0,Effects:[{Id:20b,Amplifier:1b,Duration:60}],Particle:"smoke"}
particle minecraft:smoke ~ ~5 ~ 2 2 2 0 11 force
