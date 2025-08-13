execute at @s as @e[distance=..3.6,tag=!Quick_Attack_Minion] run damage @s 5 minecraft:generic by @e[tag=Quick_Attack_Minion,limit=1,sort=nearest]
execute at @s if entity @e[distance=..3.6,tag=!Quick_Attack_Minion] run damage @s 5 minecraft:generic
execute if data entity @s {Motion:[0d]} run tag @s remove Quick_Attack_Minion