particle minecraft:portal ~ ~ ~ 0.5 0.5 0.7 5 100 force @a
execute if entity @s[y=50] run spreadplayers ~ ~ 1 15 false @s
particle minecraft:reverse_portal ~ ~ ~ 0.3 0.3 0.5 5 100 force @a
playsound minecraft:entity.enderman.teleport ambient @s