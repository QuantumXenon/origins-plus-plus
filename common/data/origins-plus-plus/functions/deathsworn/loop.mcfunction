execute as @e[tag=Deathsworn_Minion] at @s run particle minecraft:witch ~ ~1 ~ 0.25 0.25 0.25 0.01 1

execute as @a[nbt={Inventory:[{tag:{lnc:2}}]}] at @s run effect give @s minecraft:instant_health
clear @a minecraft:magma_cream{lnc:2} 1

#every start of tick makes all minions tp on the corresponding player
execute as @a[team=deathsworn] at @s if score @s UUID0 = @e[tag=Standby_Minion,limit=1] UUID0 if score @s UUID1 = @e[tag=Standby_Minion,limit=1] UUID1 run tp @e[tag=Standby_Minion] ~ -70 ~

#damage function for launched minions
execute if entity @e[tag=Quick_Attack_Minion] run function origins-plus-plus:deathsworn/quick-attack-damage
execute unless entity @e[tag=Quick_Attack_Minion] run tag @a remove Quick_Attack_Actor

#kill all dropped hearts
execute as @e[type=item] if data entity @s Thrower if data entity @s Item.tag.Minion_Count run kill

#allows for player minion to have gear
execute as @a run data modify storage origins-plus-plus:deathsworn Inventory set from entity @s Inventory
execute as @a run data modify storage origins-plus-plus:deathsworn Weapon set from entity @s SelectedItem
execute as @a run data modify storage origins-plus-plus:deathsworn Effects set from entity @s ActiveEffects