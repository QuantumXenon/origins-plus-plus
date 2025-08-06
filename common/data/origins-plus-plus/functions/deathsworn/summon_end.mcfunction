tag @s remove Standby_Minion
tp @s ~ ~-500 ~
data merge entity @s {Team:"deathsworn",Tags:["Deathsworn_Minion"]}
data modify entity @s NoAI set value false
data modify entity @s Invulnerable set value false
data modify entity @s PersistenceRequired set value false
data modify entity @s Silent set value false