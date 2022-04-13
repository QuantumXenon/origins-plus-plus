scoreboard players set @s LBIgnite12 0
execute if predicate origins-plus-plus:emblazing-warrior/coinflip run scoreboard players set @s LBIgnite12 1

execute if score @s LBIgnite12 matches 0 run summon marker ^1 ^1 ^ {Tags:["LB_Igniter"]}
execute if score @s LBIgnite12 matches 1 run summon marker ^-1 ^1 ^ {Tags:["LB_Igniter"]}