tag @s add Summon_Actor

execute store result score @s Minion_Count_temp run data get entity @s SelectedItem.tag.Minion_Count

execute as @e[tag=Standby_Minion] if score @s Minion_Count = @a[tag=Summon_Actor,limit=1] Minion_Count_temp if score @s UUID0 = @a[tag=Summon_Actor,limit=1] UUID0 if score @s UUID1 = @a[tag=Summon_Actor,limit=1] UUID1 run tp ^ ^ ^
execute as @e[tag=Standby_Minion] if score @s Minion_Count = @a[tag=Summon_Actor,limit=1] Minion_Count_temp if score @s UUID0 = @a[tag=Summon_Actor,limit=1] UUID0 if score @s UUID1 = @a[tag=Summon_Actor,limit=1] UUID1 run function origins-plus-plus:deathsworn/summon_end

execute if entity @s[nbt={SelectedItem:{tag:{mob:"minecraft:spider"}}}] run advancement grant @s only origins-plus-plus:deathsworn/spider
execute if entity @s[nbt={SelectedItem:{tag:{mob:"minecraft:skeleton"}}}] run advancement grant @s only origins-plus-plus:deathsworn/skeleton
execute if entity @s[nbt={Dimension:"minecraft:overworld",SelectedItem:{tag:{mob:"minecraft:wither_skeleton"}}}] run advancement grant @s only origins-plus-plus:deathsworn/wither_skeleton
execute if entity @s[nbt={Dimension:"minecraft:overworld",SelectedItem:{tag:{mob:"minecraft:piglin_brute"}}}] run advancement grant @s only origins-plus-plus:deathsworn/brute
advancement grant @s only origins-plus-plus:deathsworn/summon

tag @s remove Summon_Actor

resource change @s origins-plus-plus:deathsworn/soul_bar -5
item modify entity @s weapon.mainhand origins-plus-plus:consume
