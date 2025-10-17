#intercept timer in case the player tracks the mob again
tag @s add Prevent_Change_Down

execute if entity @s[tag=!TimeWatching,tag=!1s_Passed] run power revoke @s origins-plus-plus:deathsworn/1s_timer
execute if entity @s[tag=!TimeWatching,tag=!1s_Passed] run power grant @s origins-plus-plus:deathsworn/1s_timer

function origins-plus-plus:deathsworn/buff_particles
effect give @s minecraft:glowing 2 1

#do the pehkui nbt check so the minion doesnt change while its changing down, this means players will waste SOUL energy while the animation down is happening (20 ticks which equals 5 SOUL)
execute unless entity @s[pehkui.scale_nbt={"pehkui:scale_data_types":{"pehkui:base":{initial:2.0f}}}] unless entity @s[tag=Buffed_Minion] run function origins-plus-plus:deathsworn/buff_change_up

