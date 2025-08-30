execute store result score @a[sort=nearest,limit=1] UUID0_temp run data get entity @s Thrower[0]
execute store result score @a[sort=nearest,limit=1] UUID1_temp run data get entity @s Thrower[1]
execute store result score @a[sort=nearest,limit=1] Minion_Count_temp run data get entity @s Item.tag.Minion_Count
execute as @e[tag=Standby_Minion] if score @s Minion_Count = @a[sort=nearest,limit=1] Minion_Count_temp if score @s UUID0 = @a[sort=nearest,limit=1] UUID0 if score @s UUID1 = @a[sort=nearest,limit=1] UUID1 run say killed
execute as @e[tag=Standby_Minion] if score @s Minion_Count = @a[sort=nearest,limit=1] Minion_Count_temp if score @s UUID0 = @a[sort=nearest,limit=1] UUID0 if score @s UUID1 = @a[sort=nearest,limit=1] UUID1 run kill
kill
scoreboard players reset @a[sort=nearest,limit=1] Minion_Count_temp
scoreboard players reset @a[sort=nearest,limit=1] UUID0_temp
scoreboard players reset @a[sort=nearest,limit=1] UUID1_temp