scoreboard players operation @s deathsworndisplayingloyalty *= #-1 -1
scoreboard players operation @s deathsworndisplayingloyalty += #-1 -1
execute if score @s deathsworndisplayingloyalty matches -1 run attribute @s minecraft:generic.movement_speed modifier add 1-1-1-1-1111 standstill -100 add
execute if score @s deathsworndisplayingloyalty matches 0 run attribute @s minecraft:generic.movement_speed modifier remove 1-1-1-1-1111

tag @s remove 1
tag @s add 2

execute if score @s deathsworndisplayingloyalty matches -1 run tellraw @a[tag=Freeze_Actor,limit=1] [ {"selector":"@s"}, {"text":": ","color":"gray"}, {"text":"I'll stay here.","color":"dark_purple"}]
execute if score @s deathsworndisplayingloyalty matches 0 run tellraw @a[tag=Freeze_Actor,limit=1] [ {"selector":"@s"}, {"text":": ","color":"gray"}, {"text":"Waiting for your next order.","color":"dark_purple"}]