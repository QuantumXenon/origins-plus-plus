#damage everything in the trajectory
execute as @e[tag=!Quick_Attack_Minion,tag=!Skip_Quick_Attack] at @s if entity @e[tag=Quick_Attack_Minion,distance=..3.6,tag=!Skip_Quick_Attack] run damage @s 8 minecraft:generic by @e[tag=Quick_Attack_Minion,limit=1,sort=nearest]

#check if any nearby block is one that has a hitbox so the minion stops damaging (this # is not perfect but its close enough) + damage self when stopped
execute at @s unless block ~ ~ ~ water unless block ~ ~-.001 ~ #origins-plus-plus:untouchable run particle minecraft:ash ~ ~.3 ~ 0.3 0 0.3 1 5000
execute at @s unless block ~ ~ ~ water unless block ~ ~-.001 ~ #origins-plus-plus:untouchable run damage @s 4 minecraft:generic
execute at @s unless block ~ ~-.001 ~ #origins-plus-plus:untouchable run tag @s remove Quick_Attack_Minion
execute at @s unless block ~ ~-.001 ~ #origins-plus-plus:untouchable at @a[tag=Skip_Quick_Attack] if score @s Owner_UUID0 = @a[tag=Skip_Quick_Attack,limit=1,distance=..0.1] Owner_UUID0 if score @s Owner_UUID1 = @a[tag=Skip_Quick_Attack,limit=1,distance=..0.1] Owner_UUID1 run tag @a[tag=Skip_Quick_Attack,limit=1,distance=..0.1] remove Skip_Quick_Attack
execute at @s unless block ~ ~ ~ water unless block ~.31 ~ ~ #origins-plus-plus:untouchable run particle minecraft:ash ~.3 ~ ~ 0 0.3 0.3 1 5000
execute at @s unless block ~ ~ ~ water unless block ~.31 ~ ~ #origins-plus-plus:untouchable run damage @s 4 minecraft:generic
execute at @s unless block ~.31 ~ ~ #origins-plus-plus:untouchable run tag @s remove Quick_Attack_Minion
execute at @s unless block ~.31 ~ ~ #origins-plus-plus:untouchable at @a[tag=Skip_Quick_Attack] if score @s Owner_UUID0 = @a[tag=Skip_Quick_Attack,limit=1,distance=..0.1] Owner_UUID0 if score @s Owner_UUID1 = @a[tag=Skip_Quick_Attack,limit=1,distance=..0.1] Owner_UUID1 run tag @a[tag=Skip_Quick_Attack,limit=1,distance=..0.1] remove Skip_Quick_Attack
execute at @s unless block ~ ~ ~ water unless block ~.31 ~ ~ #origins-plus-plus:untouchable run particle minecraft:ash ~-.3 ~ ~ 0 0.3 0.3 1 5000
execute at @s unless block ~ ~ ~ water unless block ~-.31 ~ ~ #origins-plus-plus:untouchable run damage @s 4 minecraft:generic
execute at @s unless block ~-.31 ~ ~ #origins-plus-plus:untouchable run tag @s remove Quick_Attack_Minion
execute at @s unless block ~-.31 ~ ~ #origins-plus-plus:untouchable at @a[tag=Skip_Quick_Attack] if score @s Owner_UUID0 = @a[tag=Skip_Quick_Attack,limit=1,distance=..0.1] Owner_UUID0 if score @s Owner_UUID1 = @a[tag=Skip_Quick_Attack,limit=1,distance=..0.1] Owner_UUID1 run tag @a[tag=Skip_Quick_Attack,limit=1,distance=..0.1] remove Skip_Quick_Attack
execute at @s unless block ~ ~ ~ water unless block ~-.31 ~ ~ #origins-plus-plus:untouchable run particle minecraft:ash ~-.3 ~ ~ 0 0.3 0.3 1 5000
execute at @s unless block ~ ~ ~ water unless block ~ ~ ~.31 #origins-plus-plus:untouchable run particle minecraft:ash ~ ~ ~.3 -0.3 0.3 0 1 5000
execute at @s unless block ~ ~ ~ water unless block ~ ~ ~.31 #origins-plus-plus:untouchable run damage @s 4 minecraft:generic
execute at @s unless block ~ ~ ~.31 #origins-plus-plus:untouchable run tag @s remove Quick_Attack_Minion
execute at @s unless block ~ ~ ~.31 #origins-plus-plus:untouchable at @a[tag=Skip_Quick_Attack] if score @s Owner_UUID0 = @a[tag=Skip_Quick_Attack,limit=1,distance=..0.1] Owner_UUID0 if score @s Owner_UUID1 = @a[tag=Skip_Quick_Attack,limit=1,distance=..0.1] Owner_UUID1 run tag @a[tag=Skip_Quick_Attack,limit=1,distance=..0.1] remove Skip_Quick_Attack
execute at @s unless block ~ ~ ~ water unless block ~ ~ ~.31 #origins-plus-plus:untouchable run particle minecraft:ash ~-.3 ~ ~ 0 0.3 0.3 1 5000
execute at @s unless block ~ ~ ~ water unless block ~ ~ ~-.31 #origins-plus-plus:untouchable run particle minecraft:ash ~ ~ ~-.3 -0.3 0.3 0 1 5000
execute at @s unless block ~ ~ ~ water unless block ~ ~ ~-.31 #origins-plus-plus:untouchable run damage @s 4 minecraft:generic
execute at @s unless block ~ ~ ~-.31 #origins-plus-plus:untouchable run tag @s remove Quick_Attack_Minion
execute at @s unless block ~ ~ ~-.31 #origins-plus-plus:untouchable at @a[tag=Skip_Quick_Attack] if score @s Owner_UUID0 = @a[tag=Skip_Quick_Attack,limit=1,distance=..0.1] Owner_UUID0 if score @s Owner_UUID1 = @a[tag=Skip_Quick_Attack,limit=1,distance=..0.1] Owner_UUID1 run tag @a[tag=Skip_Quick_Attack,limit=1,distance=..0.1] remove Skip_Quick_Attack
execute at @s unless block ~ ~ ~ water unless block ~ ~ ~-.31 #origins-plus-plus:untouchable run particle minecraft:ash ~-.3 ~ ~ 0 0.3 0.3 1 5000