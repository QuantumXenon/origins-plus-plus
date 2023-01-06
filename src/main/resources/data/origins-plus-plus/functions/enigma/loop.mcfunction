execute as @e[tag=ljs_Death] at @s run summon potion ~ ~ ~ {Motion:[0.0,-5.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionEffects:[{Id:7b,Amplifier:2b,Duration:1}]}}}
execute as @e[tag=ljs_Death] at @s run kill @s

execute as @e[tag=ljs_Clone,nbt=!{HurtTime:0s}] at @s run effect clear @a[distance=..16] minecraft:invisibility
execute as @e[tag=ljs_Clone,nbt=!{HurtTime:0s}] at @s run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 100
execute as @e[tag=ljs_Clone,nbt=!{HurtTime:0s}] at @s run tp @s 0 -999 0
execute as @e[tag=ljs_Clone,nbt=!{HurtTime:0s}] at @s as @a if score @s UUID1 = @e[tag=ljs_Clone,distance=..0.001,sort=nearest,limit=1] UUID1 if score @s UUID2 = @e[tag=ljs_Clone,distance=..0.001,sort=nearest,limit=1] UUID2 if score @s UUID3 = @e[tag=ljs_Clone,distance=..0.001,sort=nearest,limit=1] UUID3 if score @s UUID4 = @e[tag=ljs_Clone,distance=..0.001,sort=nearest,limit=1] UUID4 run tag @s add ljs_DMG

scoreboard players remove @e[scores={Enigma=8..,Enigma2=0}] Enigma 8
scoreboard players remove @e[scores={Enigma=1..7,Enigma2=0}] Enigma 1

scoreboard players remove @e[scores={Enigma2=1..}] Enigma2 1

effect give @e[scores={Enigma=1..14}] minecraft:slowness 1 1 true
effect give @e[scores={Enigma=1..}] minecraft:weakness 1 0 true

effect give @e[scores={Enigma=15..29}] minecraft:slowness 1 2 true
effect give @e[scores={Enigma=15..}] minecraft:blindness 1 0 true
effect give @a[scores={Enigma=15..}] minecraft:nausea 1 0 true

effect give @e[scores={Enigma=30..}] minecraft:slowness 1 3 true
effect give @e[scores={Enigma=30..}] minecraft:poison 1 0 true

execute as @e[scores={Enigma2=1..}] at @s run particle smoke ~ ~0.75 ~ 0.25 0.5 0.25 0.025 5
execute as @e[scores={Enigma2=1..}] at @s run effect give @s minecraft:glowing 1 0 true

execute as @e[tag=ljs_Clone,tag=!lpm_PortaSet] at @s store result score @s UUID1 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[0]
execute as @e[tag=ljs_Clone,tag=!lpm_PortaSet] at @s store result score @s UUID2 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[1]
execute as @e[tag=ljs_Clone,tag=!lpm_PortaSet] at @s store result score @s UUID3 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[2]
execute as @e[tag=ljs_Clone,tag=!lpm_PortaSet] at @s store result score @s UUID4 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[3]
tag @e[tag=ljs_Clone,tag=!lpm_PortaSet] add lpm_PortaSet