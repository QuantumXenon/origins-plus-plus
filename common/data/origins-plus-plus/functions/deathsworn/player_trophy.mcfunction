execute unless data storage origins-plus-plus:killed player_name run data modify storage origins-plus-plus:killed player_name set string entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.pages[0] 48 64
execute unless data storage origins-plus-plus:killed player_name run data modify storage origins-plus-plus:killed player_name set string entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.pages[0] 48 63
execute unless data storage origins-plus-plus:killed player_name run data modify storage origins-plus-plus:killed player_name set string entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.pages[0] 48 62
execute unless data storage origins-plus-plus:killed player_name run data modify storage origins-plus-plus:killed player_name set string entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.pages[0] 48 61
execute unless data storage origins-plus-plus:killed player_name run data modify storage origins-plus-plus:killed player_name set string entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.pages[0] 48 60
execute unless data storage origins-plus-plus:killed player_name run data modify storage origins-plus-plus:killed player_name set string entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.pages[0] 48 59
execute unless data storage origins-plus-plus:killed player_name run data modify storage origins-plus-plus:killed player_name set string entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.pages[0] 48 58
execute unless data storage origins-plus-plus:killed player_name run data modify storage origins-plus-plus:killed player_name set string entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.pages[0] 48 57
execute unless data storage origins-plus-plus:killed player_name run data modify storage origins-plus-plus:killed player_name set string entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.pages[0] 48 56
execute unless data storage origins-plus-plus:killed player_name run data modify storage origins-plus-plus:killed player_name set string entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.pages[0] 48 55
execute unless data storage origins-plus-plus:killed player_name run data modify storage origins-plus-plus:killed player_name set string entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.pages[0] 48 54
execute unless data storage origins-plus-plus:killed player_name run data modify storage origins-plus-plus:killed player_name set string entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.pages[0] 48 53
execute unless data storage origins-plus-plus:killed player_name run data modify storage origins-plus-plus:killed player_name set string entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.pages[0] 48 52
execute unless data storage origins-plus-plus:killed player_name run data modify storage origins-plus-plus:killed player_name set string entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.pages[0] 48 51

#create a temp head
execute if data storage origins-plus-plus:killed player_name run summon item ~ ~ ~ {Tags:["Deathsworn_Player_Head"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:""}}}
data modify entity @e[type=minecraft:item,tag=Deathsworn_Player_Head,limit=1] Item.tag.SkullOwner set from storage origins-plus-plus:killed player_name

#check if killer uuids match
execute store result score @s UUID0_temp run data get entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.Killer0
execute store result score @s UUID1_temp run data get entity @a[tag=Player_Minion_Actor,sort=nearest,limit=1] SelectedItem.tag.Killer1
execute if score @s UUID0 = @s UUID0_temp if score @s UUID1 = @s UUID1_temp run say killer: right player
execute unless score @s UUID0 = @s UUID0_temp unless score @s UUID1 = @s UUID1_temp run say killer: wrong player

#reset minion's scores to match player's
scoreboard players reset @s UUID0_temp
scoreboard players reset @s UUID1_temp
execute store result score @s UUID0 run scoreboard players get @a[tag=Player_Minion_Actor,sort=nearest,limit=1] UUID0
execute store result score @s UUID1 run scoreboard players get @a[tag=Player_Minion_Actor,sort=nearest,limit=1] UUID1

data remove storage origins-plus-plus:killed player_name

