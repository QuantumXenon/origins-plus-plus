team join lwi_Witch @e[type=witch,team=!lwi_Witch]
execute as @e[type=marker,tag=lwi_BStand,tag=!lwi_Set] at @s run setblock ~ ~ ~ brewing_stand keep
execute as @e[type=marker,tag=lwi_BStand,tag=!lwi_Set] at @s run tag @s add lwi_Set
execute as @e[type=marker,tag=lwi_BStand,tag=lwi_Set] at @s unless block ~ ~ ~ brewing_stand run kill @s
execute as @e[type=marker,tag=lwi_BStand] at @s run data modify block ~ ~ ~ Fuel set value 20