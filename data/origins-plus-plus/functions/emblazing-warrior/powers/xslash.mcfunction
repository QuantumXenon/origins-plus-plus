summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["Cross_Attack"]}
data modify entity @e[tag=Cross_Attack,distance=..2,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]

execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^ ^1 ^ run particle minecraft:flame ~ ~ ~ 0 0 0 0.025 25
execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^1 ^1 ^1.5 run particle minecraft:flame ~ ~ ~ 0 0 0 0.025 25
execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^-1 ^1 ^1.5 run particle minecraft:flame ~ ~ ~ 0 0 0 0.025 25
execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^2 ^1 ^2.5 run particle minecraft:flame ~ ~ ~ 0 0 0 0.025 25
execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^-2 ^1 ^2.5 run particle minecraft:flame ~ ~ ~ 0 0 0 0.025 25

execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^1 ^1 ^-1.5 run particle minecraft:flame ~ ~ ~ 0 0 0 0.025 25
execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^-1 ^1 ^-1.5 run particle minecraft:flame ~ ~ ~ 0 0 0 0.025 25
execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^2 ^1 ^-2.5 run particle minecraft:flame ~ ~ ~ 0 0 0 0.025 25
execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^-2 ^1 ^-2.5 run particle minecraft:flame ~ ~ ~ 0 0 0 0.025 25

execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^ ^1 ^ run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["Cross_Hit"]}
execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^1 ^1 ^1.5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["Cross_Hit"]}
execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^-1 ^1 ^1.5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["Cross_Hit"]}
execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^2 ^1 ^2.5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["Cross_Hit"]}
execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^-2 ^1 ^2.5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["Cross_Hit"]}

execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^1 ^1 ^-1.5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["Cross_Hit"]}
execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^-1 ^1 ^-1.5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["Cross_Hit"]}
execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^2 ^1 ^-2.5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["Cross_Hit"]}
execute as @e[tag=Cross_Attack,distance=..1] at @s positioned ^-2 ^1 ^-2.5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,Tags:["Cross_Hit"]}

kill @e[tag=Cross_Attack]