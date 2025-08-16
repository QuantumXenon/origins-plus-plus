#check if killed uuids match
execute store result score @s UUID0 run data get entity @e[type=minecraft:item,tag=Deathsworn_Player_Head,limit=1] Item.tag.SkullOwner.Id[0]
execute store result score @s UUID1 run data get entity @e[type=minecraft:item,tag=Deathsworn_Player_Head,limit=1] Item.tag.SkullOwner.Id[1]
execute store result score @s UUID0_temp run data get entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.Killed0
execute store result score @s UUID1_temp run data get entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.Killed1
execute unless score @s UUID0 = @s UUID0_temp unless score @s UUID1 = @s UUID1_temp run say killed: wrong player
execute if score @s UUID0 = @s UUID0_temp if score @s UUID1 = @s UUID1_temp run say killed: right player

execute if score @s UUID0 = @s UUID0_temp if score @s UUID1 = @s UUID1_temp run data modify entity @s ArmorItems[3] set from entity @e[type=minecraft:item,tag=Deathsworn_Player_Head,limit=1,sort=nearest] Item

#tag minion as identified
execute if score @s UUID0 = @s UUID0_temp if score @s UUID1 = @s UUID1_temp run tag @s add Player_Named_Minion

#reset minion's scores to match player's
scoreboard players reset @s UUID0_temp
scoreboard players reset @s UUID1_temp
execute store result score @s UUID0 run scoreboard players get @a[tag=Player_Minion_Actor,sort=nearest,limit=1] UUID0
execute store result score @s UUID1 run scoreboard players get @a[tag=Player_Minion_Actor,sort=nearest,limit=1] UUID1

tag @a[tag=Player_Minion_Actor,sort=nearest,limit=1] remove Player_Minion_Actor

say after update
