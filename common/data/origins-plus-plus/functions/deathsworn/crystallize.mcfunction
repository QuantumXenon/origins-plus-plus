data merge entity @s {NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b}
tag @a add actor
tag @s add Standby_Minion
scoreboard players add @a[tag=actor,sort=nearest,limit=1] Minion_Count 1
scoreboard players operation @s Minion_Count = @a[tag=actor,sort=nearest,limit=1] Minion_Count

execute at @s run tp @s @a[tag=actor,sort=nearest,limit=1]
tp @s ~ ~500 ~

execute if entity @e[tag=Standby_Minion] run say crystallize

summon minecraft:item ~ ~ ~ {Tags:["Petrified_Heart"],Glowing:1b,PickupDelay:1,Item:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{CustomModelData:1,lnc:1,display:{Name:'{"translate":"origins-plus-plus.deathsworn.petrified_heart","color":"#F01E67","bold":false,"italic":false}'}}}}
execute store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Minion_Count int 1 run scoreboard players get @a[tag=actor,sort=nearest,limit=1] Minion_Count 

#new minions get full health, recycled minions don't
execute unless entity @s[tag=Deathsworn_Minion] store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get