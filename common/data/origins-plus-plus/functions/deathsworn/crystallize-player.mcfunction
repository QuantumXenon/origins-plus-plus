data modify entity @s ArmorItems[3] set from storage origins-plus-plus:deathsworn player_trophy
data remove storage origins-plus-plus:deathsworn player_trophy

execute store result score @s Killed_UUID0 run data get entity @a[tag=Deathsworn_Killed_Player,limit=1] UUID[0]
execute store result score @s Killed_UUID1 run data get entity @a[tag=Deathsworn_Killed_Player,limit=1] UUID[1]

tag @s add Player_Minion
data merge entity @s {NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
tag @s add Standby_Minion
scoreboard players add @a[tag=Crystallize_Actor,sort=nearest,limit=1] Minion_Count 1
scoreboard players operation @s Minion_Count = @a[tag=Crystallize_Actor,sort=nearest,limit=1] Minion_Count
data modify entity @s CanPickUpLoot set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"

execute at @s as @e[tag=Deathsworn_Armor_Stand,sort=nearest,limit=1] if score @s Killed_UUID0 = @e[tag=!Geared_Player_Minion,tag=Player_Minion,limit=1,sort=nearest] Killed_UUID0 if score @s Killed_UUID1 = @e[tag=!Geared_Player_Minion,tag=Player_Minion,limit=1,sort=nearest] Killed_UUID1 run tag @s add Matched_Deathsworn_Armor_Stand
execute as @e[tag=Matched_Deathsworn_Armor_Stand] if score @s Killed_UUID0 = @e[tag=!Geared_Player_Minion,tag=Player_Minion,limit=1] Killed_UUID0 if score @s Killed_UUID1 = @e[tag=!Geared_Player_Minion,tag=Player_Minion,limit=1] Killed_UUID1 run say matched ids

#check what pieces the player has, except helmet, for the purpose of dropping armor in case the minion picks it up
data modify entity @s ArmorDropChances set value [1.0F,1.0F,1.0F,1.0F]
execute if data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[0] unless data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[1] unless data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[2] run data modify entity @s ArmorDropChances set value [0.0F,1.0F,1.0F,1.0F]
execute unless data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[0] if data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[1] unless data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[2] run data modify entity @s ArmorDropChances set value [1.0F,0.0F,1.0F,1.0F]
execute unless data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[0] unless data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[1] if data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[2] run data modify entity @s ArmorDropChances set value [1.0F,1.0F,0.0F,1.0F]
execute if data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[0] if data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[1] unless data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[2] run data modify entity @s ArmorDropChances set value [0.0F,0.0F,1.0F,1.0F]
execute if data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[0] unless data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[1] if data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[2] run data modify entity @s ArmorDropChances set value [0.0F,1.0F,0.0F,1.0F]
execute unless data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[0] if data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[1] if data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[2] run data modify entity @s ArmorDropChances set value [1.0F,0.0F,0.0F,1.0F]
execute if data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[0] if data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[1] if data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[2] run data modify entity @s ArmorDropChances set value [0.0F,0.0F,0.0F,1.0F]

#same for hand items
execute if data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] HandItems[0] unless data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] HandItems[1] run data modify entity @s HandDropChances set value [0.0F,1.0F]
execute unless data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] HandItems[0] if data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] HandItems[1] run data modify entity @s HandDropChances set value [1.0F,0.0F]
execute unless data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] HandItems[0] unless data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] HandItems[1] run data modify entity @s HandDropChances set value [1.0F,1.0F]
execute if data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] HandItems[0] if data entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] HandItems[1] run data modify entity @s HandDropChances set value [0.0F,0.0F]

#now give them the gear
data modify entity @s ArmorItems[0] set from entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[0]
data modify entity @s ArmorItems[1] set from entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[1]
data modify entity @s ArmorItems[2] set from entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ArmorItems[2]
data modify entity @s HandItems[0] set from entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] HandItems[0]
data modify entity @s HandItems[1] set from entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] HandItems[1]


#no matter if the minion is actually geared or not, it's been geared up by the code's eyes
tag @s add Geared_Player_Minion


#handle effects
data modify entity @s ActiveEffects set from entity @e[tag=Matched_Deathsworn_Armor_Stand,limit=1] ActiveEffects
effect clear @s minecraft:regeneration
effect clear @s minecraft:wither
effect clear @s minecraft:poison

#just first and second is more than enough to track
execute as @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result score @s UUID0 run data get entity @s UUID[0]
execute as @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result score @s UUID1 run data get entity @s UUID[1]

#just first and second is more than enough to track
execute store result score @s UUID0 run scoreboard players get @a[tag=Crystallize_Actor,sort=nearest,limit=1] UUID0
execute store result score @s UUID1 run scoreboard players get @a[tag=Crystallize_Actor,sort=nearest,limit=1] UUID1

#make the minion a "ghost" while on standby
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


#item stuff
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] run summon minecraft:item ~ ~ ~ {Tags:["Petrified_Heart"],Glowing:1b,PickupDelay:1,Item:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{CustomModelData:1,display:{Name:'{"translate":"origins-plus-plus.deathsworn.petrified_heart","color":"#F01E67","bold":false,"italic":false}'}}}}
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Minion_Count int 1 run scoreboard players get @a[tag=Crystallize_Actor,sort=nearest,limit=1] Minion_Count
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] run data merge entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] {Item:{tag:{UUID0:0}}}
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] run data merge entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] {Item:{tag:{UUID1:0}}}
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.UUID0 int 1 run scoreboard players get @a[tag=Crystallize_Actor,sort=nearest,limit=1] UUID0
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.UUID1 int 1 run scoreboard players get @a[tag=Crystallize_Actor,sort=nearest,limit=1] UUID1

#appraisal support
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Health float 1 run data get entity @s Health
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Armor float 1 run attribute @s minecraft:generic.armor get
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.AD float 1 run attribute @s minecraft:generic.attack_damage get
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.player set from entity @s ArmorItems[3].tag.SkullOwner.Name

execute as @a[tag=Deathsworn_Killed_Player,sort=nearest,limit=1] run tag @s remove Deathsworn_Killed_Player