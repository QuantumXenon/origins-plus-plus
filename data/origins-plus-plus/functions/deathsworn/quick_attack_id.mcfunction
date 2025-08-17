tag @s add Quick_Attack_Actor
execute summon minecraft:armor_stand run tag @s add Deathsworn_Marker
data merge entity @s {Marker:true}
tp @e[tag=Deathsworn_Marker,limit=1] ^ ^ ^

#a failsafe if the origins raycast bugs out
execute as @e[tag=Deathsworn_Marker,limit=1] if data storage origins-plus-plus:temp Motion run kill


#calculate and launches the minion
execute as @e[tag=Deathsworn_Marker,limit=1] if data storage origins-plus-plus:temp pos2 if data storage origins-plus-plus:temp pos1 run function origins-plus-plus:deathsworn/quick-attack-speed-calc


#forcefully end the loop
execute as @e[tag=Deathsworn_Marker,limit=1] if data storage origins-plus-plus:temp Motion run kill

#1st run gets pos1, which gets turned into temppos1, 2nd run gets pos2, 3rd run will run the function above
execute as @e[tag=Deathsworn_Marker,limit=1] if data storage origins-plus-plus:temp pos1 unless data storage origins-plus-plus:temp pos2 run function origins-plus-plus:deathsworn/quick-attack-store-pos
execute as @e[tag=Deathsworn_Marker,limit=1] unless data storage origins-plus-plus:temp pos2 unless data storage origins-plus-plus:temp pos1 run function origins-plus-plus:deathsworn/quick-attack-store-pos

say id

#execute if data storage origins-plus-plus:temp pos1 run data modify storage origins-plus-plus:temp temppos1 set from storage origins-plus-plus:temp pos1
#data remove storage origins-plus-plus:temp pos1

execute as @e[tag=Deathsworn_Marker,limit=1] run kill