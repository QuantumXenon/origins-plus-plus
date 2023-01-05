execute as @e[tag=LB_Igniter,type=marker] at @s as @e[type=!player,type=!#origins-plus-plus:untargetable,distance=..1.5] run data modify entity @s Fire set value 60
execute as @e[tag=LB_Igniter,type=marker] at @s run kill @s

execute as @e[tag=LB_CrossHit] at @s run power grant @s origins-plus-plus:emblazing-warrior/cross_dmg