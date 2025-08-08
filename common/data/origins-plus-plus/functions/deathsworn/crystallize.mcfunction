data merge entity @s {NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
tag @s add Standby_Minion
tag @s remove Deathsworn_Minion
scoreboard players add @a[tag=actor,sort=nearest,limit=1] Minion_Count 1
scoreboard players operation @s Minion_Count = @a[tag=actor,sort=nearest,limit=1] Minion_Count
data modify entity @s DeathLootTable set value "minecraft:empty"

#just first and second is more than enough
execute store result score @s UUID0 run scoreboard players get @a[tag=actor,sort=nearest,limit=1] UUID0
execute store result score @s UUID1 run scoreboard players get @a[tag=actor,sort=nearest,limit=1] UUID1

#if minion was commanded to stop while being retrieved, next summon allowed to walk
execute if score @s deathsworndisplayingloyalty matches -1 run scoreboard players operation @s deathsworndisplayingloyalty *= #-1 -1
execute if score @s deathsworndisplayingloyalty matches 1 run scoreboard players operation @s deathsworndisplayingloyalty += #-1 -1
execute if score @s deathsworndisplayingloyalty matches 0 run attribute @s minecraft:generic.movement_speed modifier remove 1-1-1-1-1111

#on petrified_heart/carry power first the player gets the actor tag, then entities get tped to the player, small enough to not be seen or have a hitbox
scale delay set pehkui:model_width 0
scale delay set pehkui:model_height 0
scale delay set pehkui:interaction_box_width 0
scale delay set pehkui:interaction_box_height 0
scale delay set pehkui:hitbox_width 0
scale delay set pehkui:hitbox_height 0
scale multiply pehkui:hitbox_width 0
scale multiply pehkui:hitbox_height 0
scale multiply pehkui:model_width 0.01
scale multiply pehkui:model_height 0.01
scale multiply pehkui:interaction_box_width 0.01
scale multiply pehkui:interaction_box_height 0.01
execute if entity @e[tag=Standby_Minion] run say crystallize

summon minecraft:item ~ ~ ~ {Tags:["Petrified_Heart"],Glowing:1b,PickupDelay:1,Item:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{CustomModelData:1,lnc:1,display:{Name:'{"translate":"origins-plus-plus.deathsworn.petrified_heart","color":"#F01E67","bold":false,"italic":false}'}}}}
execute store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Minion_Count int 1 run scoreboard players get @a[tag=actor,sort=nearest,limit=1] Minion_Count

#new minions get full health, recycled minions don't
execute unless entity @s[tag=Deathsworn_Minion] store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get

execute as @a[tag=actor,sort=nearest,limit=1] run tag @s remove actor