execute as @e[tag=Deathsworn_Minion] at @s run particle minecraft:witch ~ ~1 ~ 0.25 0.25 0.25 0.01 1

execute as @a[nbt={Inventory:[{tag:{lnc:2}}]}] at @s run effect give @s minecraft:instant_health
clear @a minecraft:magma_cream{lnc:2} 1