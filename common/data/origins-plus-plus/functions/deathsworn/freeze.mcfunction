#first run: NaN*NaN=0 ; 0-1=-1
#second run: -1*-1=1 ; 1-1=0
#loop
scoreboard players operation @s Deathsworn_Toggle *= @s Deathsworn_Toggle
scoreboard players remove @s Deathsworn_Toggle 1

#if -1, freeze
execute if score @s Deathsworn_Toggle matches -1 run power grant @s origins-plus-plus:deathsworn/freeze
execute if score @s Deathsworn_Toggle matches -1 run tellraw @a[tag=Freeze_Actor,limit=1] [ {"selector":"@s"}, {"text":": ","color":"gray"}, {"translate":"origins-plus-plus.deathsworn.frozen","color":"dark_purple"}]

#if 0, unfreeze
execute if score @s Deathsworn_Toggle matches 0 run power revoke @s origins-plus-plus:deathsworn/freeze
execute if score @s Deathsworn_Toggle matches 0 run tellraw @a[tag=Freeze_Actor,limit=1] [ {"selector":"@s"}, {"text":": ","color":"gray"}, {"translate":"origins-plus-plus.deathsworn.unfrozen","color":"dark_purple"}]
