data modify entity @s ArmorItems[3] set from storage origins-plus-plus:deathsworn player_trophy
data remove storage origins-plus-plus:deathsworn player_trophy

tag @s add Player_Minion
data merge entity @s {NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
tag @s add Standby_Minion
tag @s remove Deathsworn_Minion
scoreboard players add @a[tag=Crystallize_Actor,sort=nearest,limit=1] Minion_Count 1
scoreboard players operation @s Minion_Count = @a[tag=Crystallize_Actor,sort=nearest,limit=1] Minion_Count
data modify entity @s DeathLootTable set value "minecraft:empty"

#check what pieces the player has, except helmet, for the purpose of dropping armor in case the minion picks it up
execute if data storage origins-plus-plus:deathsworn Inventory[{Slot:100b}] unless data storage origins-plus-plus:deathsworn Inventory[{Slot:101b}] unless data storage origins-plus-plus:deathsworn Inventory[{Slot:102b}] run data modify entity @s ArmorDropChances set value [0.0F,1.0F,1.0F,1.0F]
execute unless data storage origins-plus-plus:deathsworn Inventory[{Slot:100b}] if data storage origins-plus-plus:deathsworn Inventory[{Slot:101b}] unless data storage origins-plus-plus:deathsworn Inventory[{Slot:102b}] run data modify entity @s ArmorDropChances set value [1.0F,0.0F,1.0F,1.0F]
execute unless data storage origins-plus-plus:deathsworn Inventory[{Slot:100b}] unless data storage origins-plus-plus:deathsworn Inventory[{Slot:101b}] if data storage origins-plus-plus:deathsworn Inventory[{Slot:102b}] run data modify entity @s ArmorDropChances set value [1.0F,1.0F,0.0F,1.0F]
execute if data storage origins-plus-plus:deathsworn Inventory[{Slot:100b}] if data storage origins-plus-plus:deathsworn Inventory[{Slot:101b}] unless data storage origins-plus-plus:deathsworn Inventory[{Slot:102b}] run data modify entity @s ArmorDropChances set value [0.0F,0.0F,1.0F,1.0F]
execute if data storage origins-plus-plus:deathsworn Inventory[{Slot:100b}] unless data storage origins-plus-plus:deathsworn Inventory[{Slot:101b}] if data storage origins-plus-plus:deathsworn Inventory[{Slot:102b}] run data modify entity @s ArmorDropChances set value [0.0F,1.0F,0.0F,1.0F]
execute unless data storage origins-plus-plus:deathsworn Inventory[{Slot:100b}] if data storage origins-plus-plus:deathsworn Inventory[{Slot:101b}] if data storage origins-plus-plus:deathsworn Inventory[{Slot:102b}] run data modify entity @s ArmorDropChances set value [1.0F,0.0F,0.0F,1.0F]
execute if data storage origins-plus-plus:deathsworn Inventory[{Slot:100b}] if data storage origins-plus-plus:deathsworn Inventory[{Slot:101b}] if data storage origins-plus-plus:deathsworn Inventory[{Slot:102b}] run data modify entity @s ArmorDropChances set value [0.0F,0.0F,0.0F,1.0F]

#same for hand items
execute if data storage origins-plus-plus:deathsworn Weapon unless data storage origins-plus-plus:deathsworn Inventory[{Slot:-106b}] run data modify entity @s HandDropChances set value [0.0F,1.0F]
execute unless data storage origins-plus-plus:deathsworn Weapon if data storage origins-plus-plus:deathsworn Inventory[{Slot:-106b}] run data modify entity @s HandDropChances set value [1.0F,0.0F]
execute unless data storage origins-plus-plus:deathsworn Weapon unless data storage origins-plus-plus:deathsworn Inventory[{Slot:-106b}] run data modify entity @s HandDropChances set value [1.0F,1.0F]
execute if data storage origins-plus-plus:deathsworn Weapon if data storage origins-plus-plus:deathsworn Inventory[{Slot:-106b}] run data modify entity @s HandDropChances set value [0.0F,0.0F]

#now give them the gear
data modify entity @s ArmorItems[0] set from storage origins-plus-plus:deathsworn Inventory[{Slot:100b}]
data modify entity @s ArmorItems[1] set from storage origins-plus-plus:deathsworn Inventory[{Slot:101b}]
data modify entity @s ArmorItems[2] set from storage origins-plus-plus:deathsworn Inventory[{Slot:102b}]
data modify entity @s HandItems[0] set from storage origins-plus-plus:deathsworn Weapon
data modify entity @s HandItems[1] set from storage origins-plus-plus:deathsworn Inventory[{Slot:-106b}]

#handle effects
data modify entity @s ActiveEffects set from storage origins-plus-plus:deathsworn Effects
effect clear @s minecraft:regeneration
effect clear @s minecraft:wither
effect clear @s minecraft:poison

#just first and second is more than enough to track
execute as @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result score @s UUID0 run data get entity @s UUID[0]
execute as @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result score @s UUID1 run data get entity @s UUID[1]

#just first and second is more than enough to track
execute store result score @s UUID0 run scoreboard players get @a[tag=Crystallize_Actor,sort=nearest,limit=1] UUID0
execute store result score @s UUID1 run scoreboard players get @a[tag=Crystallize_Actor,sort=nearest,limit=1] UUID1


#if minion was commanded to stop while being retrieved, next summon allowed to move
execute if score @s deathsworndisplayingloyalty matches -1 run scoreboard players operation @s deathsworndisplayingloyalty *= #-1 -1
execute if score @s deathsworndisplayingloyalty matches 1 run scoreboard players operation @s deathsworndisplayingloyalty += #-1 -1
execute if score @s deathsworndisplayingloyalty matches 0 run attribute @s minecraft:generic.movement_speed modifier remove 1-1-1-1-1111


#on petrified_heart/carry power first the player gets the Crystallize_Actor tag, then entities get tped to the player, small enough to not be seen or have a hitbox
scale delay set pehkui:model_width 0
scale delay set pehkui:model_height 0
scale delay set pehkui:interaction_box_width 0
scale delay set pehkui:interaction_box_height 0
scale delay set pehkui:hitbox_width 0
scale delay set pehkui:hitbox_height 0
scale multiply pehkui:hitbox_width -1
scale multiply pehkui:hitbox_height -1
scale multiply pehkui:model_width -1
scale multiply pehkui:model_height -1
scale multiply pehkui:interaction_box_width -1
scale multiply pehkui:interaction_box_height -1
execute if entity @e[tag=Standby_Minion] run say crystallize


#item stuff
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] run summon minecraft:item ~ ~ ~ {Tags:["Petrified_Heart"],Glowing:1b,PickupDelay:1,Item:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{CustomModelData:1,lnc:1,display:{Name:'{"translate":"origins-plus-plus.deathsworn.petrified_heart","color":"#F01E67","bold":false,"italic":false}'}}}}
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Minion_Count int 1 run scoreboard players get @a[tag=Crystallize_Actor,sort=nearest,limit=1] Minion_Count
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] run data merge entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] {Item:{tag:{UUID0:0}}}
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] run data merge entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] {Item:{tag:{UUID1:0}}}
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.UUID0 int 1 run scoreboard players get @a[tag=Crystallize_Actor,sort=nearest,limit=1] UUID0
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.UUID1 int 1 run scoreboard players get @a[tag=Crystallize_Actor,sort=nearest,limit=1] UUID1

#appraisal support
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Health float 1 run data get entity @s Health
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Armor float 1 run attribute @s minecraft:generic.armor get
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.AD float 1 run attribute @s minecraft:generic.attack_damage get
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set from entity @s ArmorItems[3].tag.SkullOwner.Name



execute as @a[tag=Deathsworn_Killed_Player,sort=nearest,limit=1] run tag @s remove Deathsworn_Killed_Player