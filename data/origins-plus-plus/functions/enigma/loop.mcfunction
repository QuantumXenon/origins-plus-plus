execute as @e[tag=ljs_Death] at @s run summon potion ~ ~ ~ {Motion:[0.0,-5.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionEffects:[{Id:7b,Amplifier:2b,Duration:1}]}}}
execute as @e[tag=ljs_Death] at @s run kill @s

scoreboard players remove @e[scores={Enigma=8..,Enigma2=0}] Enigma 8
scoreboard players remove @e[scores={Enigma=1..7,Enigma2=0}] Enigma 1

scoreboard players remove @e[scores={Enigma2=1..}] Enigma2 1

effect give @e[scores={Enigma=1..14}] slowness 1 1 true
effect give @e[scores={Enigma=1..}] weakness 1 0 true

effect give @e[scores={Enigma=15..29}] slowness 1 2 true
effect give @e[scores={Enigma=15..}] blindness 1 0 true
effect give @a[scores={Enigma=15..}] nausea 1 0 true

effect give @e[scores={Enigma=30..}] slowness 1 3 true
effect give @e[scores={Enigma=30..}] poison 1 0 true

execute as @e[scores={Enigma2=1..}] at @s run particle smoke ~ ~0.75 ~ 0.25 0.5 0.25 0.025 5
execute as @e[scores={Enigma2=1..}] at @s run effect give @s glowing 1 0 true
