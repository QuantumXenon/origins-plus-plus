#just so we dont create any more unnecessary scoreboards, re-use minion count
data modify storage origins-plus-plus:temp Motion set value [0d,0d,0d]

#for x
execute store result score @s Minion_Count run data get storage origins-plus-plus:temp pos1[0] 10000000
execute store result score @s Minion_Count_temp run data get storage origins-plus-plus:temp pos2[0] 10000000
scoreboard players operation @s Minion_Count_temp -= @s Minion_Count
execute store result storage origins-plus-plus:temp Motion[0] double 0.0003 run scoreboard players get @s Minion_Count_temp


#for y
execute store result score @s Minion_Count run data get storage origins-plus-plus:temp pos1[1] 10000000
execute store result score @s Minion_Count_temp run data get storage origins-plus-plus:temp pos2[1] 10000000
scoreboard players operation @s Minion_Count_temp -= @s Minion_Count
execute store result storage origins-plus-plus:temp Motion[1] double 0.0002 run scoreboard players get @s Minion_Count_temp


#for z
execute store result score @s Minion_Count run data get storage origins-plus-plus:temp pos1[2] 10000000
execute store result score @s Minion_Count_temp run data get storage origins-plus-plus:temp pos2[2] 10000000
scoreboard players operation @s Minion_Count_temp -= @s Minion_Count
execute store result storage origins-plus-plus:temp Motion[2] double 0.0003 run scoreboard players get @s Minion_Count_temp

say calculated

data modify storage origins-plus-plus:temp temppos1 set from storage origins-plus-plus:temp pos1
data remove storage origins-plus-plus:temp pos1
data remove storage origins-plus-plus:temp pos2

execute as @e[tag=Standby_Minion,limit=1] run function origins-plus-plus:deathsworn/quick-attack-launch-minion
execute as @a[team=deathsworn,limit=1] run item modify entity @s weapon.mainhand origins-plus-plus:consume
