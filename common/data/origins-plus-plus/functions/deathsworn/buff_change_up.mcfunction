scale easing set pehkui:base pehkui:elastic_in
scale delay set pehkui:base 30
scale multiply pehkui:base 2.35
tag @s add Buffed_Minion
execute at @s run playsound minecraft:entity.ravager.celebrate hostile @a[distance=..16] ~ ~ ~ 1.2 2
power grant @s origins-plus-plus:deathsworn/buff_change_atk
power grant @s origins-plus-plus:deathsworn/buff_change_max_health
power grant @s origins-plus-plus:deathsworn/buff_change_toughness