execute as @e[tag=lnc_Minion] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.01 1

execute as @a[nbt={Inventory:[{tag:{lnc:2}}]}] at @s run effect give @s minecraft:instant_health
clear @a magma_cream{lnc:2} 1