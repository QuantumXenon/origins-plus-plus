summon minecraft:tnt ~ ~2 ~ {Fuse:1}
resource change @s origins-plus-plus:ebon-wing/last_resort_cooldown -1200
resource change @s origins-plus-plus:ebon-wing/blood_blood -220
effect give @e[distance=2..6] minecraft:wither 3 0 false
playsound minecraft:entity.illusioner.prepare_blindness master @a[distance=..30] ~ ~ ~ 50 0
playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 50 0
particle minecraft:ash ~ ~ ~ 1 1 1 100 1000 normal
particle minecraft:ash ~ ~ ~ 10 10 10 1 1000 normal
particle minecraft:ash ~ ~ ~ 10 10 10 1 1000 normal
particle minecraft:ash ~ ~ ~ 10 10 10 1 1000 normal
particle minecraft:ash ~ ~ ~ 10 10 10 1 1000 normal
particle minecraft:ash ~ ~ ~ 10 10 10 1 1000 normal