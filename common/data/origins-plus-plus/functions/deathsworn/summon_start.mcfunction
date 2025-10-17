tag @s add Summon_Actor

execute store result score @s Minion_Count_temp run data get entity @s SelectedItem.tag.Minion_Count

execute as @e[tag=Standby_Minion] if score @s Minion_Count = @a[tag=Summon_Actor,limit=1] Minion_Count_temp if score @s Owner_UUID0 = @a[tag=Summon_Actor,limit=1] Owner_UUID0 if score @s Owner_UUID1 = @a[tag=Summon_Actor,limit=1] Owner_UUID1 run tp ^ ^ ^
execute as @e[tag=Standby_Minion] if score @s Minion_Count = @a[tag=Summon_Actor,limit=1] Minion_Count_temp if score @s Owner_UUID0 = @a[tag=Summon_Actor,limit=1] Owner_UUID0 if score @s Owner_UUID1 = @a[tag=Summon_Actor,limit=1] Owner_UUID1 run function origins-plus-plus:deathsworn/summon_end

advancement grant @s only origins-plus-plus:deathsworn/summon

tag @s remove Summon_Actor

resource change @s origins-plus-plus:deathsworn/soul_bar -30
item modify entity @s weapon.mainhand origins-plus-plus:consume