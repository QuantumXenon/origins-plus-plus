tp ~ -70 ~
data merge entity @s {NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
tag @s add Standby_Minion
scoreboard players add @a[tag=Crystallize_Actor,sort=nearest,limit=1] Minion_Count 1
scoreboard players operation @s Minion_Count = @a[tag=Crystallize_Actor,sort=nearest,limit=1] Minion_Count
data modify entity @s IsImmuneToZombification set value 1
data modify entity @s CanPickUpLoot set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
data modify entity @s ignited set value false
power remove @s origins-plus-plus:deathsworn/prevent_death

#if the minion kills a mob, give the player the heart, and a portion of SOUL
power grant @s origins-plus-plus:deathsworn/crystallize

#make items always drop, only modify if its not a player minion
execute unless entity @s[tag=Player_Minion] run data modify entity @s ArmorDropChances set value [1.0F,1.0F,1.0F,1.0F]
execute unless entity @s[tag=Player_Minion] run data modify entity @s HandDropChances set value [1.0F,1.0F]

#check what pieces the mob has, for the purpose of dropping in case the minion picks it up
data modify entity @s ArmorDropChances set value [1.0F,1.0F,1.0F,1.0F]
execute if data entity @s[tag=!Player_Minion] ArmorItems[3] unless data entity @s[tag=!Player_Minion] ArmorItems[2] unless data entity @s[tag=!Player_Minion] ArmorItems[1] unless data entity @s[tag=!Player_Minion] ArmorItems[0] run data modify entity @s ArmorDropChances set value [1.0F,1.0F,1.0F,0.0F]
execute if data entity @s[tag=!Player_Minion] ArmorItems[3] unless data entity @s[tag=!Player_Minion] ArmorItems[2] unless data entity @s[tag=!Player_Minion] ArmorItems[1] if data entity @s[tag=!Player_Minion] ArmorItems[0] run data modify entity @s ArmorDropChances set value [0.0F,1.0F,1.0F,0.0F]
execute if data entity @s[tag=!Player_Minion] ArmorItems[3] unless data entity @s[tag=!Player_Minion] ArmorItems[2] if data entity @s[tag=!Player_Minion] ArmorItems[1] unless data entity @s[tag=!Player_Minion] ArmorItems[0] run data modify entity @s ArmorDropChances set value [1.0F,0.0F,1.0F,0.0F]
execute if data entity @s[tag=!Player_Minion] ArmorItems[3] unless data entity @s[tag=!Player_Minion] ArmorItems[2] if data entity @s[tag=!Player_Minion] ArmorItems[1] if data entity @s[tag=!Player_Minion] ArmorItems[0] run data modify entity @s ArmorDropChances set value [0.0F,0.0F,1.0F,0.0F]
execute if data entity @s[tag=!Player_Minion] ArmorItems[3] if data entity @s[tag=!Player_Minion] ArmorItems[2] unless data entity @s[tag=!Player_Minion] ArmorItems[1] unless data entity @s[tag=!Player_Minion] ArmorItems[0] run data modify entity @s ArmorDropChances set value [1.0F,1.0F,0.0F,0.0F]
execute if data entity @s[tag=!Player_Minion] ArmorItems[3] if data entity @s[tag=!Player_Minion] ArmorItems[2] unless data entity @s[tag=!Player_Minion] ArmorItems[1] if data entity @s[tag=!Player_Minion] ArmorItems[0] run data modify entity @s ArmorDropChances set value [0.0F,1.0F,0.0F,0.0F]
execute if data entity @s[tag=!Player_Minion] ArmorItems[3] if data entity @s[tag=!Player_Minion] ArmorItems[2] if data entity @s[tag=!Player_Minion] ArmorItems[1] unless data entity @s[tag=!Player_Minion] ArmorItems[0] run data modify entity @s ArmorDropChances set value [1.0F,0.0F,0.0F,0.0F]
execute if data entity @s[tag=!Player_Minion] ArmorItems[3] if data entity @s[tag=!Player_Minion] ArmorItems[2] if data entity @s[tag=!Player_Minion] ArmorItems[1] if data entity @s[tag=!Player_Minion] ArmorItems[0] run data modify entity @s ArmorDropChances set value [0.0F,0.0F,0.0F,0.0F]
execute unless data entity @s[tag=!Player_Minion] ArmorItems[3] unless data entity @s[tag=!Player_Minion] ArmorItems[2] unless data entity @s[tag=!Player_Minion] ArmorItems[1] unless data entity @s[tag=!Player_Minion] ArmorItems[0] run data modify entity @s ArmorDropChances set value [1.0F,1.0F,1.0F,1.0F]
execute unless data entity @s[tag=!Player_Minion] ArmorItems[3] unless data entity @s[tag=!Player_Minion] ArmorItems[2] unless data entity @s[tag=!Player_Minion] ArmorItems[1] if data entity @s[tag=!Player_Minion] ArmorItems[0] run data modify entity @s ArmorDropChances set value [0.0F,1.0F,1.0F,1.0F]
execute unless data entity @s[tag=!Player_Minion] ArmorItems[3] unless data entity @s[tag=!Player_Minion] ArmorItems[2] if data entity @s[tag=!Player_Minion] ArmorItems[1] unless data entity @s[tag=!Player_Minion] ArmorItems[0] run data modify entity @s ArmorDropChances set value [1.0F,0.0F,1.0F,1.0F]
execute unless data entity @s[tag=!Player_Minion] ArmorItems[3] unless data entity @s[tag=!Player_Minion] ArmorItems[2] if data entity @s[tag=!Player_Minion] ArmorItems[1] if data entity @s[tag=!Player_Minion] ArmorItems[0] run data modify entity @s ArmorDropChances set value [0.0F,0.0F,1.0F,1.0F]
execute unless data entity @s[tag=!Player_Minion] ArmorItems[3] if data entity @s[tag=!Player_Minion] ArmorItems[2] unless data entity @s[tag=!Player_Minion] ArmorItems[1] unless data entity @s[tag=!Player_Minion] ArmorItems[0] run data modify entity @s ArmorDropChances set value [1.0F,1.0F,0.0F,1.0F]
execute unless data entity @s[tag=!Player_Minion] ArmorItems[3] if data entity @s[tag=!Player_Minion] ArmorItems[2] unless data entity @s[tag=!Player_Minion] ArmorItems[1] if data entity @s[tag=!Player_Minion] ArmorItems[0] run data modify entity @s ArmorDropChances set value [0.0F,1.0F,0.0F,1.0F]
execute unless data entity @s[tag=!Player_Minion] ArmorItems[3] if data entity @s[tag=!Player_Minion] ArmorItems[2] if data entity @s[tag=!Player_Minion] ArmorItems[1] unless data entity @s[tag=!Player_Minion] ArmorItems[0] run data modify entity @s ArmorDropChances set value [1.0F,0.0F,0.0F,1.0F]
execute unless data entity @s[tag=!Player_Minion] ArmorItems[3] if data entity @s[tag=!Player_Minion] ArmorItems[2] if data entity @s[tag=!Player_Minion] ArmorItems[1] if data entity @s[tag=!Player_Minion] ArmorItems[0] run data modify entity @s ArmorDropChances set value [0.0F,0.0F,0.0F,1.0F]


#check what weapons the mob has, for the purpose of dropping in case the minion picks it up
execute if data entity @s[tag=!Player_Minion] HandItems[0] unless data entity @s[tag=!Player_Minion] HandItems[1] run data modify entity @s HandDropChances set value [0.0F,1.0F]
execute unless data entity @s[tag=!Player_Minion] HandItems[0] if data entity @s[tag=!Player_Minion] HandItems[1] run data modify entity @s HandDropChances set value [1.0F,0.0F]
execute unless data entity @s[tag=!Player_Minion] HandItems[0] unless data entity @s[tag=!Player_Minion] HandItems[1] run data modify entity @s HandDropChances set value [1.0F,1.0F]
execute if data entity @s[tag=!Player_Minion] HandItems[0] if data entity @s[tag=!Player_Minion] HandItems[1] run data modify entity @s HandDropChances set value [0.0F,0.0F]

#handle effects
effect clear @s minecraft:regeneration
effect clear @s minecraft:wither
effect clear @s minecraft:poison


#just first and second is more than enough to track
execute as @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result score @s Owner_UUID0 run data get entity @s UUID[0]
execute as @a[tag=Crystallize_Actor,sort=nearest,limit=1] store result score @s Owner_UUID1 run data get entity @s UUID[1]

#just first and second is more than enough to track
execute store result score @s Owner_UUID0 run scoreboard players get @a[tag=Crystallize_Actor,sort=nearest,limit=1] Owner_UUID0
execute store result score @s Owner_UUID1 run scoreboard players get @a[tag=Crystallize_Actor,sort=nearest,limit=1] Owner_UUID1



#new minions get full health, recycled minions don't
execute unless entity @s[tag=Deathsworn_Minion] store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
tag @s remove Deathsworn_Minion

#if minion was commanded to stop while being retrieved, next summon allowed to move
execute if score @s Deathsworn_Toggle matches -1 run scoreboard players operation @s Deathsworn_Toggle *= @s Deathsworn_Toggle
execute if score @s Deathsworn_Toggle matches 1 run scoreboard players remove @s Deathsworn_Toggle 1
execute if score @s Deathsworn_Toggle matches 0 run attribute @s minecraft:generic.movement_speed modifier remove 1-1-1-1-1111

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
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] run summon minecraft:item ~ ~1 ~ {Tags:["Petrified_Heart"],Glowing:1b,PickupDelay:1,Item:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{CustomModelData:1,display:{Name:'{"translate":"origins-plus-plus.deathsworn.petrified_heart","color":"#F01E67","bold":false,"italic":false}'}}}}
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] positioned ~ ~1 ~ store result entity @e[tag=Petrified_Heart,distance=..0.1,sort=nearest,limit=1] Item.tag.Minion_Count int 1 run scoreboard players get @s Minion_Count
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] positioned ~ ~1 ~ run data merge entity @e[tag=Petrified_Heart,distance=..0.1,sort=nearest,limit=1] {Item:{tag:{UUID0:0}}}
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] positioned ~ ~1 ~ run data merge entity @e[tag=Petrified_Heart,distance=..0.1,sort=nearest,limit=1] {Item:{tag:{UUID1:0}}}
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] positioned ~ ~1 ~ store result entity @e[tag=Petrified_Heart,distance=..0.1,sort=nearest,limit=1] Item.tag.UUID0 int 1 run scoreboard players get @s Owner_UUID0
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] positioned ~ ~1 ~ store result entity @e[tag=Petrified_Heart,distance=..0.1,sort=nearest,limit=1] Item.tag.UUID1 int 1 run scoreboard players get @s Owner_UUID1
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] positioned ~ ~1 ~ run data modify entity @e[tag=Petrified_Heart,distance=..0.1,sort=nearest,limit=1] Owner set from entity @a[tag=Crystallize_Actor,sort=nearest,limit=1] UUID


#appraisal support
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] positioned ~ ~1 ~ store result entity @e[tag=Petrified_Heart,distance=..0.1,sort=nearest,limit=1] Item.tag.Health float 1 run data get entity @s Health
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] positioned ~ ~1 ~ store result entity @e[tag=Petrified_Heart,distance=..0.1,sort=nearest,limit=1] Item.tag.Armor float 1 run attribute @s minecraft:generic.armor get
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] positioned ~ ~1 ~ store result entity @e[tag=Petrified_Heart,distance=..0.1,sort=nearest,limit=1] Item.tag.AD float 1 run attribute @s minecraft:generic.attack_damage get
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] positioned ~ ~1 ~ if entity @s[tag=Player_Minion] run data modify entity @e[tag=Petrified_Heart,distance=..0.1,sort=nearest,limit=1] Item.tag.player set from entity @s ArmorItems[3].tag.SkullOwner.Name
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] positioned ~ ~1 ~ run data merge entity @e[tag=Petrified_Heart,distance=..0.1,sort=nearest,limit=1] {Item:{tag:{Saved_from_Death:1b}}}


#setup for cleaning minion and item if its not picked up
execute at @a[tag=Crystallize_Actor,sort=nearest,limit=1] positioned ~ ~1 ~ as @e[tag=Petrified_Heart,distance=..0.1,sort=nearest,limit=1] at @s run function origins-plus-plus:deathsworn/living_placeholder
