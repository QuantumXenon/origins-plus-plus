execute as @e[tag=Deathsworn_Minion] at @s run particle minecraft:witch ~ ~1 ~ 0.25 0.25 0.25 0.001 1

execute as @e[type=item] if data entity @s Item.tag.lnc if data entity @s Thrower run kill

execute as @a[nbt={Inventory:[{tag:{lnc:2}}]}] at @s run effect give @s minecraft:instant_health
clear @a minecraft:magma_cream{lnc:2} 1