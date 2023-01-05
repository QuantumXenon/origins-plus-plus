scoreboard players set @s Emblazing_Warrior 0
execute if predicate origins-plus-plus:coin_flip run scoreboard players set @s Emblazing_Warrior 1

execute if score @s Emblazing_Warrior matches 0 run summon marker ^1 ^1 ^ {Tags:["LB_Igniter"]}
execute if score @s Emblazing_Warrior matches 1 run summon marker ^-1 ^1 ^ {Tags:["LB_Igniter"]}