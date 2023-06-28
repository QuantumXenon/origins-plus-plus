particle minecraft:totem_of_undying ~ ~ ~ 2 3 2 0.1 2000 force
playsound minecraft:item.totem.use player @s ~ ~ ~ 20
tp @e[tag=Deathsworn_Minion,sort=nearest,limit=2,distance=..10] 0 -999 -0
advancement grant @s only origins-plus-plus:deathsworn/immortal