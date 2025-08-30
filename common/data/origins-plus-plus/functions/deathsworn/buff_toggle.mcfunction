scoreboard players operation @s Deathsworn_Toggle *= @s Deathsworn_Toggle
scoreboard players remove @s Deathsworn_Toggle 1

execute if score @s Deathsworn_Toggle matches -1 run tag @s add Buff_Toggled
execute if score @s Deathsworn_Toggle matches 0 run tag @s remove Buff_Toggled
