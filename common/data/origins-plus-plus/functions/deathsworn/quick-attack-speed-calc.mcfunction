#just so we dont create any more unnecessary scoreboards, re-use minion count
data modify storage origins-plus-plus:temp Motion set value [0d,0d,0d]

#for x
execute store result score @s Minion_Count run data get storage origins-plus-plus:temp pos1[0] 100000
execute store result score @s Minion_Count_temp run data get storage origins-plus-plus:temp pos2[0] 100000
scoreboard players operation @s Minion_Count_temp -= @s Minion_Count
execute store result storage origins-plus-plus:temp Motion[0] double 0.000035 run scoreboard players get @s Minion_Count_temp


#for y
execute store result score @s Minion_Count run data get storage origins-plus-plus:temp pos1[1] 100000
execute store result score @s Minion_Count_temp run data get storage origins-plus-plus:temp pos2[1] 100000
scoreboard players operation @s Minion_Count_temp -= @s Minion_Count
execute store result storage origins-plus-plus:temp Motion[1] double 0.000025 run scoreboard players get @s Minion_Count_temp


#for z
execute store result score @s Minion_Count run data get storage origins-plus-plus:temp pos1[2] 100000
execute store result score @s Minion_Count_temp run data get storage origins-plus-plus:temp pos2[2] 100000
scoreboard players operation @s Minion_Count_temp -= @s Minion_Count
execute store result storage origins-plus-plus:temp Motion[2] double 0.000035 run scoreboard players get @s Minion_Count_temp

execute if data storage origins-plus-plus:temp pos1 run data modify storage origins-plus-plus:temp temppos1 set from storage origins-plus-plus:temp pos1
data remove storage origins-plus-plus:temp pos1
data remove storage origins-plus-plus:temp pos2

tellraw @a {"storage":"origins-plus-plus:temp","nbt":"Motion"}

execute store result score @a[tag=Quick_Attack_Actor,limit=1] Minion_Count_temp run data get entity @a[tag=Quick_Attack_Actor,limit=1] SelectedItem.tag.Minion_Count
execute as @e[tag=Standby_Minion] if score @s Minion_Count = @a[tag=Quick_Attack_Actor,limit=1] Minion_Count_temp if score @s UUID0 = @a[tag=Quick_Attack_Actor,limit=1] UUID0 if score @s UUID1 = @a[tag=Quick_Attack_Actor,limit=1] UUID1 run function origins-plus-plus:deathsworn/quick-attack-launch-minion

say should end here

tag @a[tag=Quick_Attack_Actor,limit=1] remove Quick_Attack_Actor