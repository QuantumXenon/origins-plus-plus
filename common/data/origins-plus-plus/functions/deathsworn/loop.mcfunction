execute as @e[tag=Deathsworn_Minion] at @s run particle minecraft:witch ~ ~1 ~ 0.25 0.25 0.25 0.01 1

execute as @a[nbt={Inventory:[{tag:{lnc:2}}]}] at @s run effect give @s minecraft:instant_health
clear @a minecraft:magma_cream{lnc:2} 1

#every start of tick makes all minions tp on the corresponding player
execute as @a[team=deathsworn] at @s if score @s UUID0 = @e[tag=Standby_Minion,limit=1] UUID0 if score @s UUID1 = @e[tag=Standby_Minion,limit=1] UUID1 run tp @e[tag=Standby_Minion] ~ ~500 ~

#damage function for launched minions
execute as @e[tag=Quick_Attack_Minion] run function origins-plus-plus:deathsworn/quick-attack-damage

#kill all dropped hearts
execute as @e[type=item] if data entity @s Thrower if data entity @s Item.tag.Minion_Count run kill

#wait for head item to update
execute as @e[tag=Player_Minion] as @s[tag=!Player_Named_Minion] if data entity @e[type=item,tag=Deathsworn_Player_Head,limit=1,sort=nearest] Item.tag.SkullOwner.Id run function origins-plus-plus:deathsworn/player_trophy_after_update
kill @e[type=minecraft:item,tag=Deathsworn_Player_Head,sort=nearest]