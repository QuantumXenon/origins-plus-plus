execute as @e[tag=ljs_Death] at @s run summon potion ~ ~ ~ {Motion:[0.0,-5.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionEffects:[{Id:7b,Amplifier:2b,Duration:1}]}}}
execute as @e[tag=ljs_Death] at @s run kill @s

scoreboard players remove @e[scores={ljs_Stare=8..,ljs_Stare2=0}] ljs_Stare 8
scoreboard players remove @e[scores={ljs_Stare=1..7,ljs_Stare2=0}] ljs_Stare 1

scoreboard players remove @e[scores={ljs_Stare2=1..}] ljs_Stare2 1

effect give @e[scores={ljs_Stare=1..14}] slowness 1 1 true
effect give @e[scores={ljs_Stare=1..}] weakness 1 0 true

effect give @e[scores={ljs_Stare=15..29}] slowness 1 2 true
effect give @e[scores={ljs_Stare=15..}] blindness 1 0 true
effect give @a[scores={ljs_Stare=15..}] nausea 1 0 true

effect give @e[scores={ljs_Stare=30..}] slowness 1 3 true
effect give @e[scores={ljs_Stare=30..}] poison 1 0 true

execute as @e[scores={ljs_Stare2=1..}] at @s run particle smoke ~ ~0.75 ~ 0.25 0.5 0.25 0.025 5
execute as @e[scores={ljs_Stare2=1..}] at @s run effect give @s glowing 1 0 true
