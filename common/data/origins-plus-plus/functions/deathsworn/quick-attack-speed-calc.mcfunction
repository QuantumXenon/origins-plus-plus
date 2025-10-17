data modify storage origins-plus-plus:deathsworn Motion set value [0d,0d,0d]

#Raycast vector 35% + Player Motion 65%
#for x
execute store result score @s Pos1 run data get storage origins-plus-plus:deathsworn pos1[0] 35000
execute store result score @s Pos2 run data get storage origins-plus-plus:deathsworn pos2[0] 35000
scoreboard players operation @s Pos2 -= @s Pos1
scoreboard players operation @s Motion = @s Pos2
execute store result score @s Pos2 run data get entity @a[tag=Quick_Attack_Actor,limit=1] Motion[0] 65000
scoreboard players operation @s Motion += @s Pos2
execute store result storage origins-plus-plus:deathsworn Motion[0] double 0.0001 run scoreboard players get @s Motion


#for y
execute store result score @s Pos1 run data get storage origins-plus-plus:deathsworn pos1[1] 35000
execute store result score @s Pos2 run data get storage origins-plus-plus:deathsworn pos2[1] 35000
scoreboard players operation @s Pos2 -= @s Pos1
scoreboard players operation @s Motion = @s Pos2
execute store result score @s Pos2 run data get entity @a[tag=Quick_Attack_Actor,limit=1] Motion[1] 65000
scoreboard players operation @s Motion += @s Pos2
execute store result storage origins-plus-plus:deathsworn Motion[1] double 0.000035 run scoreboard players get @s Motion


#for z
execute store result score @s Pos1 run data get storage origins-plus-plus:deathsworn pos1[2] 35000
execute store result score @s Pos2 run data get storage origins-plus-plus:deathsworn pos2[2] 35000
scoreboard players operation @s Pos2 -= @s Pos1
scoreboard players operation @s Motion = @s Pos2
execute store result score @s Pos2 run data get entity @a[tag=Quick_Attack_Actor,limit=1] Motion[2] 65000
scoreboard players operation @s Motion += @s Pos2
execute store result storage origins-plus-plus:deathsworn Motion[2] double 0.0001 run scoreboard players get @s Motion


execute if data storage origins-plus-plus:deathsworn pos1 run data modify storage origins-plus-plus:deathsworn temppos1 set from storage origins-plus-plus:deathsworn pos1
data remove storage origins-plus-plus:deathsworn pos1
data remove storage origins-plus-plus:deathsworn pos2


execute store result score @a[tag=Quick_Attack_Actor,limit=1] Minion_Count_temp run data get entity @a[tag=Quick_Attack_Actor,limit=1] SelectedItem.tag.Minion_Count
execute as @e[tag=Standby_Minion] if score @s Minion_Count = @a[tag=Quick_Attack_Actor,limit=1] Minion_Count_temp if score @s Owner_UUID0 = @a[tag=Quick_Attack_Actor,limit=1] Owner_UUID0 if score @s Owner_UUID1 = @a[tag=Quick_Attack_Actor,limit=1] Owner_UUID1 run function origins-plus-plus:deathsworn/quick-attack-launch-minion

execute as @a[tag=Quick_Attack_Actor,limit=1,sort=nearest] run tag @s add Skip_Quick_Attack
execute as @a[tag=Skip_Quick_Attack,limit=1,sort=nearest] run tag @s remove Quick_Attack_Actor

#ignore this -- say should end here
