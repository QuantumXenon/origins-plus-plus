#first run: NaN*NaN=0 ; 0-1=-1
#second run: -1*-1=1 ; 1-1=0
#loop
scoreboard players operation @s Deathsworn_Toggle *= @s Deathsworn_Toggle
scoreboard players remove @s Deathsworn_Toggle 1

#if -1, freeze
execute if score @s Deathsworn_Toggle matches -1 run attribute @s minecraft:generic.movement_speed modifier add 1-1-1-1-1111 standstill -100 add
execute if score @s Deathsworn_Toggle matches -1 run tellraw @a[tag=Freeze_Actor,limit=1] [ {"selector":"@s"}, {"text":": ","color":"gray"}, {"text":"I'll stay here.","color":"dark_purple"}]

#if 0, unfreeze
execute if score @s Deathsworn_Toggle matches 0 run attribute @s minecraft:generic.movement_speed modifier remove 1-1-1-1-1111
execute if score @s Deathsworn_Toggle matches 0 run tellraw @a[tag=Freeze_Actor,limit=1] [ {"selector":"@s"}, {"text":": ","color":"gray"}, {"text":"Waiting for your next order.","color":"dark_purple"}]


tag @s remove 1
tag @s add 2