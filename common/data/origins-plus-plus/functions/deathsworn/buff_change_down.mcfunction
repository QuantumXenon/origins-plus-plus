scale easing set pehkui:base pehkui:elastic_in
scale delay set pehkui:base 20
scale divide pehkui:base 2.35
effect clear @s minecraft:glowing
tag @s remove Buffed_Minion
tag @s remove 1s_Passed
tag @s remove TimeWatching
execute at @s run playsound minecraft:entity.ravager.hurt hostile @a[distance=..16] ~ ~ ~ 1.4 0.3
execute at @s run playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..16] ~ ~ ~ 0.8 1.6
power revoke @s origins-plus-plus:deathsworn/buff_change_atk
power revoke @s origins-plus-plus:deathsworn/buff_change_max_health
power revoke @s origins-plus-plus:deathsworn/buff_change_toughness