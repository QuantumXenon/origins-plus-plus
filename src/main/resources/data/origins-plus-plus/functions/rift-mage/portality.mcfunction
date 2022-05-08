execute store result score @s UUID1 run data get entity @s UUID[0]
execute store result score @s UUID2 run data get entity @s UUID[1]
execute store result score @s UUID3 run data get entity @s UUID[2]
execute store result score @s UUID4 run data get entity @s UUID[3]

execute at @s as @e[type=armor_stand,tag=lpm_Portality] if score @s UUID1 = @a[distance=..0.001,sort=nearest,limit=1] UUID1 if score @s UUID2 = @a[distance=..0.001,sort=nearest,limit=1] UUID2 if score @s UUID3 = @a[distance=..0.001,sort=nearest,limit=1] UUID3 if score @s UUID4 = @a[distance=..0.001,sort=nearest,limit=1] UUID4 run kill @s
summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Marker:1,Tags:["lpm_Portality"]}