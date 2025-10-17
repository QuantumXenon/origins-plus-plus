execute if entity @a[team=deathsworn] as @e[tag=Deathsworn_Minion] at @s run particle minecraft:witch ~ ~1 ~ 0.25 0.25 0.25 0.01 1


#every start of tick makes all minions tp on the corresponding player, this should be at the top of the rest considering "positioned" is used sometimes
execute as @a[team=deathsworn] at @s if score @s Owner_UUID0 = @e[tag=Standby_Minion,limit=1] Owner_UUID0 if score @s Owner_UUID1 = @e[tag=Standby_Minion,limit=1] Owner_UUID1 run tp @e[tag=Standby_Minion] ~ -70 ~


#clone living placeholder every tick, way more reliable than using a tp based method
kill @e[tag=Living_Placeholder]
execute if entity @a[team=deathsworn] as @e[type=item,tag=Petrified_Heart] at @s run function origins-plus-plus:deathsworn/living_placeholder

#clear dropped hearts
execute if entity @a[team=deathsworn] as @e[type=item] at @a[team=deathsworn] if data entity @s Item.tag.Minion_Count if data entity @s {Thrower:[I;0,0,0,0]} run function origins-plus-plus:deathsworn/clear
execute if entity @a[team=deathsworn] as @e[type=item] if data entity @s Item.tag.Minion_Count if data entity @s Thrower if data entity @s Item.tag{Saved_from_Death:1b} run data merge entity @s {Thrower:[I;0,0,0,0]}
execute if entity @a[team=deathsworn] as @e[type=item] if data entity @s Item.tag.Minion_Count if data entity @s {Thrower:[I;0,0,0,0]} run data merge entity @s {Item:{tag:{Saved_from_Death:0b}}}

#for minions with Heart_Search, within the time limit defined by each minion's power, search every tick for the heart in the players' inventory and toggle the need to kill the minion. do this every tick for mod compat, for example backpack mods. if found remove Heart_Search, add Heart_Found
execute if entity @a[team=deathsworn] as @e[tag=Heart_Search,tag=Standby_Minion] at @a[team=deathsworn] if score @s Owner_UUID0 = @a[team=deathsworn,limit=1,sort=nearest,distance=..0.1] Owner_UUID0 if score @s Owner_UUID1 = @a[team=deathsworn,limit=1,sort=nearest,distance=..0.1] Owner_UUID1 at @a[team=deathsworn,limit=1,sort=nearest,distance=..0.1] run function origins-plus-plus:deathsworn/clear

#if a player's origin changes, kill the minions
execute if entity @a[team=!deathsworn] at @a[team=!deathsworn] as @e[tag=Standby_Minion] if score @s Owner_UUID0 = @a[team=!deathsworn,limit=1,distance=..0.1,sort=nearest] Owner_UUID0 if score @s Owner_UUID1 = @a[team=!deathsworn,limit=1,distance=..0.1,sort=nearest] Owner_UUID1 run kill
execute if entity @a[team=!deathsworn] at @a[team=!deathsworn] as @e[tag=Deathsworn_Minion] if score @s Owner_UUID0 = @a[team=!deathsworn,limit=1,distance=..0.1,sort=nearest] Owner_UUID0 if score @s Owner_UUID1 = @a[team=!deathsworn,limit=1,distance=..0.1,sort=nearest] Owner_UUID1 run kill


#in case the tag wasnt cleared
execute if entity @a[team=deathsworn] as @a[tag=Skip_Quick_Attack] run tag @s remove Quick_Attack_Actor
#damage function for launched minions
execute if entity @a[team=deathsworn] as @e[tag=Quick_Attack_Minion] run function origins-plus-plus:deathsworn/quick-attack-damage


#buff: stop the clock if no updates happen by the player
execute if entity @a[team=deathsworn] as @e[tag=Buffed_Minion] if entity @s[tag=1s_Passed] run power remove @s origins-plus-plus:deathsworn/1s_timer
execute if entity @a[team=deathsworn] as @e[tag=Buffed_Minion] if entity @s[tag=1s_Passed,tag=!Prevent_Change_Down] run function origins-plus-plus:deathsworn/buff_change_down
execute if entity @a[team=deathsworn] as @e[tag=Buffed_Minion] run tag @s remove Prevent_Change_Down


#prevent all mobs' death if killed by a deathsworn
execute if entity @a[team=deathsworn] as @e[type=!player,tag=!Standby_Minion,tag=!Deathsworn_Minion,type=!#origins-plus-plus:no_crystal] run power grant @s origins-plus-plus:deathsworn/prevent_death