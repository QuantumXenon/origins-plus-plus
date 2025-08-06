execute store result score @s Minion_Count_temp run data get entity @s SelectedItem.tag.Minion_Count
execute as @e[tag=Standby_Minion] at @s if score @s Minion_Count = @a[dx=0,dy=-500,dz=0,limit=1] Minion_Count_temp run function origins-plus-plus:deathsworn/summon_end

execute if entity @s[nbt={SelectedItem:{tag:{mob:"minecraft:spider"}}}] run advancement grant @s only origins-plus-plus:deathsworn/spider
execute if entity @s[nbt={SelectedItem:{tag:{mob:"minecraft:skeleton"}}}] run advancement grant @s only origins-plus-plus:deathsworn/skeleton
execute if entity @s[nbt={Dimension:"minecraft:overworld",SelectedItem:{tag:{mob:"minecraft:wither_skeleton"}}}] run advancement grant @s only origins-plus-plus:deathsworn/wither_skeleton
execute if entity @s[nbt={Dimension:"minecraft:overworld",SelectedItem:{tag:{mob:"minecraft:piglin_brute"}}}] run advancement grant @s only origins-plus-plus:deathsworn/brute
advancement grant @s only origins-plus-plus:deathsworn/summon

resource change @s origins-plus-plus:deathsworn/soul_bar -5
item modify entity @s weapon.mainhand origins-plus-plus:consume
