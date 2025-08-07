#execute as @e[tag=Standby_Minion] at @a[dx=0,dy=-500,dz=0,limit=1] run tp ~ ~ ~
execute as @e[tag=Standby_Minion] at @a[sort=nearest,limit=1] run tp ~ ~500 ~
#execute as @e[tag=Standby_Minion] at @a[dx=0,dy=-500,dz=0,limit=1] run tp ~ ~500 ~

#execute if entity @e[tag=Standby_Minion] run say a