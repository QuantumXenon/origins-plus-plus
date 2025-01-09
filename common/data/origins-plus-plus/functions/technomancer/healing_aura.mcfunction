execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {ReapplicationDelay:20,Radius:5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:100,Color:2539263,Effects:[{Id:10,Amplifier:1,Duration:20,ShowParticles:0b},{Id:22,Amplifier:1,Duration:300,ShowParticles:0b},{Id:23,Amplifier:1,Duration:300,ShowParticles:0b}]}
playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 100 0.3
playsound minecraft:ambient.crimson_forest.mood master @s ~ ~ ~ 100 0.6
resource change @s origins-plus-plus:technomancer/tech_mana_resource -5000