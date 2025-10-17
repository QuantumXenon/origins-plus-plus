#in case the user is using a mod that changes max health, preserve the debt
execute unless score @s Deathsworn_Health matches -2.. store result score @s Deathsworn_Health run attribute @s minecraft:generic.max_health get
scoreboard players operation @s Deathsworn_Health += @s Minions_Deployed

# Count entities with tag 'Deathsworn_Minion' and store result in 'Minions_Deployed', so they only affect the owner, use a +1 system
scoreboard players set @s Minions_Deployed 0
execute at @s as @e[tag=Deathsworn_Minion] if score @s Owner_UUID0 = @a[distance=..0.1,limit=1] Owner_UUID0 if score @s Owner_UUID1 = @a[distance=..0.1,limit=1] Owner_UUID1 run scoreboard players add @a[distance=..0.1,limit=1] Minions_Deployed 1

# Calculate player's health
scoreboard players operation @s Deathsworn_Health -= @s Minions_Deployed

# Save the result to a new resource
resource operation @s origins-plus-plus:deathsworn/count_minions_resource = @s Deathsworn_Health

# Trigger health update
power revoke @s origins-plus-plus:deathsworn/modify_health
power grant @s origins-plus-plus:deathsworn/modify_health