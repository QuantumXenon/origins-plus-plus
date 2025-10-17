tag @s add Quick_Attack_Actor
execute summon minecraft:block_display run tag @s add Deathsworn_Marker
tp @e[tag=Deathsworn_Marker,limit=1] ^ ^ ^

#a failsafe if the origins raycast bugs out
execute as @e[tag=Deathsworn_Marker,limit=1] if data storage origins-plus-plus:deathsworn Motion run kill


#calculate and launches the minion
execute as @e[tag=Deathsworn_Marker,limit=1] if data storage origins-plus-plus:deathsworn pos2 if data storage origins-plus-plus:deathsworn pos1 run function origins-plus-plus:deathsworn/quick-attack-speed-calc


#forcefully end the loop
execute as @e[tag=Deathsworn_Marker,limit=1] if data storage origins-plus-plus:deathsworn Motion run kill

#1st run gets pos1, which gets turned into temppos1, 2nd run gets pos2, 3rd run will run the function above
execute as @e[tag=Deathsworn_Marker,limit=1] if data storage origins-plus-plus:deathsworn pos1 unless data storage origins-plus-plus:deathsworn pos2 run function origins-plus-plus:deathsworn/quick-attack-store-pos
execute as @e[tag=Deathsworn_Marker,limit=1] unless data storage origins-plus-plus:deathsworn pos2 unless data storage origins-plus-plus:deathsworn pos1 run function origins-plus-plus:deathsworn/quick-attack-store-pos

execute as @e[tag=Deathsworn_Marker,limit=1] run kill