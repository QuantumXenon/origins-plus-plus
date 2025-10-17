#deal 0 dmg, but no kb
attribute @s minecraft:generic.knockback_resistance modifier add 1-1-1-1-1 nokb 100 add
damage @s 0 minecraft:cramming by @e[limit=1,sort=nearest,tag=Target]
attribute @s minecraft:generic.knockback_resistance modifier remove 1-1-1-1-1

execute at @s run playsound minecraft:entity.ravager.roar hostile @a[distance=..16] ~ ~ ~ 1.2 2