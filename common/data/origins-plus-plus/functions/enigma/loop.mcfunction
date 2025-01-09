execute as @e[tag=Enigma_Kill] at @s run summon minecraft:potion ~ ~ ~ {Motion:[0.0,-5.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionEffects:[{Id:7b,Amplifier:2b,Duration:1}]}}}
execute as @e[tag=Enigma_Kill] at @s run kill @s

execute as @e[tag=Enigma_Clone,nbt=!{HurtTime:0s}] at @s run power grant @s origins-plus-plus:enigma/clone_explode
execute as @e[tag=Enigma_Clone,nbt=!{HurtTime:0s}] at @s run effect clear @a minecraft:invisibility
execute as @e[tag=Enigma_Clone,nbt=!{HurtTime:0s}] at @s run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 100
execute as @e[tag=Enigma_Clone,nbt=!{HurtTime:0s}] at @s run kill @s
execute as @e[tag=Enigma_Clone,nbt=!{HurtTime:0s}] at @s as @a if score @s UUID1 = @e[tag=Enigma_Clone,distance=..0.001,sort=nearest,limit=1] UUID1 if score @s UUID2 = @e[tag=Enigma_Clone,distance=..0.001,sort=nearest,limit=1] UUID2 if score @s UUID3 = @e[tag=Enigma_Clone,distance=..0.001,sort=nearest,limit=1] UUID3 if score @s UUID4 = @e[tag=Enigma_Clone,distance=..0.001,sort=nearest,limit=1] UUID4 run tag @s add Enigma_Damage

scoreboard players remove @e[scores={Enigma=8..,Enigma2=0}] Enigma 8
scoreboard players remove @e[scores={Enigma=1..7,Enigma2=0}] Enigma 1

scoreboard players remove @e[scores={Enigma2=1..}] Enigma2 1

effect give @e[type=!#origins-plus-plus:untargetable,scores={Enigma=1..9}] minecraft:slowness 1 1 true
effect give @e[type=!#origins-plus-plus:untargetable,scores={Enigma=1..}] minecraft:weakness 1 0 true

effect give @e[type=!#origins-plus-plus:untargetable,scores={Enigma=10..19}] minecraft:slowness 1 2 true
effect give @e[type=!#origins-plus-plus:untargetable,scores={Enigma=10..}] minecraft:blindness 1 0 true
effect give @a[scores={Enigma=10..}] minecraft:nausea 1 0 true

execute as @e[type=!#origins-plus-plus:untargetable,scores={Enigma2=1..}] at @s run particle minecraft:smoke ~ ~0.75 ~ 0.25 0.5 0.25 0.025 5
execute as @e[type=!#origins-plus-plus:untargetable,scores={Enigma2=1..}] at @s run effect give @s minecraft:glowing 1 0 true

execute as @e[tag=Enigma_Clone,tag=!Set_Clone] at @s store result score @s UUID1 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[0]
execute as @e[tag=Enigma_Clone,tag=!Set_Clone] at @s store result score @s UUID2 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[1]
execute as @e[tag=Enigma_Clone,tag=!Set_Clone] at @s store result score @s UUID3 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[2]
execute as @e[tag=Enigma_Clone,tag=!Set_Clone] at @s store result score @s UUID4 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[3]
tag @e[tag=Enigma_Clone,tag=!Set_Clone] add Set_Clone