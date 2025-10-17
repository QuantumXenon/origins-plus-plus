particle minecraft:totem_of_undying ~ ~ ~ 2 3 2 0.1 2000 force
playsound minecraft:item.totem.use player @s ~ ~ ~ 20
execute at @s as @e[tag=Deathsworn_Minion] if score @s Owner_UUID0 = @a[team=deathsworn,distance=..0.1,sort=nearest,limit=1] Owner_UUID0 if score @s Owner_UUID1 = @a[team=deathsworn,distance=..0.1,sort=nearest,limit=1] Owner_UUID1 run tag @s add Take_Soul
kill @e[tag=Take_Soul,sort=nearest,limit=2]
tag @e remove Take_Soul
advancement grant @s only origins-plus-plus:deathsworn/immortal