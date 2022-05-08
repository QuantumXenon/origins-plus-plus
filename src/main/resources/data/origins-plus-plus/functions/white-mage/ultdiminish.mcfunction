effect give @e[distance=..10] minecraft:instant_damage 1 3
effect give @e[distance=..10] minecraft:blindness 30
effect give @e[distance=..10] minecraft:slowness 30 3
effect give @e[distance=..10] minecraft:weakness 30 2
effect give @e[distance=..10] minecraft:mining_fatigue 30 2
effect give @e[distance=..10] minecraft:wither 30 2
particle minecraft:soul ~ ~ ~ 4 4 4 0 2000
particle minecraft:angry_villager ~ ~ ~ 4 4 4 0 100
playsound minecraft:particle.soul_escape player @a[distance=..60] ~ ~ ~ 100 0.7 1
playsound minecraft:particle.soul_escape player @a[distance=..60] ~ ~ ~ 70 0.6 1
playsound minecraft:particle.soul_escape player @a[distance=..60] ~ ~ ~ 50 0.8 1
clear @s minecraft:dragon_breath 1