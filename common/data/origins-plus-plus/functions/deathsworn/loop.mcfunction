execute as @e[tag=Deathsworn_Minion] at @s run particle minecraft:witch ~ ~1 ~ 0.25 0.25 0.25 0.01 1

#every start of tick makes all minions tp on the corresponding player
execute as @a[team=deathsworn] at @s if score @s UUID0 = @e[tag=Standby_Minion,limit=1] UUID0 if score @s UUID1 = @e[tag=Standby_Minion,limit=1] UUID1 run tp @e[tag=Standby_Minion] ~ -70 ~

#damage function for launched minions
execute as @e[tag=Quick_Attack_Minion] run function origins-plus-plus:deathsworn/quick-attack-damage

#kill all dropped hearts
execute as @e[type=item] if data entity @s Item.tag.Minion_Count if data entity @s Thrower run kill

execute as @a[team=deathsworn] run power remove @s origins-plus-plus:deathsworn/1s_timer

#stop the clock if no updates happen by the player
execute as @e[tag=Buffed_Minion] if entity @s[tag=1s_Passed] run power remove @s origins-plus-plus:deathsworn/1s_timer
execute as @e[tag=Buffed_Minion] if entity @s[tag=1s_Passed,tag=!Prevent_Change_Down] run function origins-plus-plus:deathsworn/buff_change_down
execute as @e[tag=Buffed_Minion] run tag @s remove Prevent_Change_Down