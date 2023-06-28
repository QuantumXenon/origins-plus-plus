particle minecraft:portal ~ ~ ~ 0.5 0.5 0.7 5 100 force @a
execute if entity @s[y=50,dy=50] run spreadplayers ~ ~ 1 15 under 127 false @s
particle minecraft:reverse_portal ~ ~ ~ 0.3 0.3 0.5 5 100 force @a
playsound minecraft:entity.elder_guardian.curse ambient @s