#in case the user is using a mod that changes max health, preserve the difference instead of hardcoding values
execute store result score @s calculated_health run attribute @s minecraft:generic.max_health get
scoreboard players operation @s calculated_health += @s nearby_minions

# Count entities with tag 'Deathsworn_Minion' and store result in 'nearby_minions', so they only affect the owner, use a +1 system
scoreboard players set @s nearby_minions 0
execute at @s as @e[tag=Deathsworn_Minion] if score @s UUID0 = @a[distance=..0.1,limit=1] UUID0 if score @s UUID1 = @a[distance=..0.1,limit=1] UUID1 run scoreboard players add @a[distance=..0.1,limit=1] nearby_minions 1

# Calculate player's health
scoreboard players operation @s calculated_health -= @s nearby_minions

# Save the result to a new resource
resource operation @s origins-plus-plus:deathsworn/count_minions_resource = @s calculated_health

# Trigger health update
power revoke @s origins-plus-plus:deathsworn/modify_health
power grant @s origins-plus-plus:deathsworn/modify_health