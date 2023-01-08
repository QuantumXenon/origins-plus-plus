particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.75 0.75 0.75 0 175

power grant @e[type=!#origins-plus-plus:untargetable,distance=..2] origins-plus-plus:witch-of-ink/color/red

execute as @e[type=!#origins-plus-plus:untargetable,distance=..2] at @s store result score @s Witch_of_Ink run power has @s origins-plus-plus:witch-of-ink/color/green

execute as @e[type=!#origins-plus-plus:untargetable,distance=..2] at @s if score @s Witch_of_Ink matches 1 run function origins-plus-plus:witch-of-ink/brush/yellow
power revoke @e[type=!#origins-plus-plus:untargetable,distance=..2] origins-plus-plus:witch-of-ink/color/green
power revoke @e[type=!#origins-plus-plus:untargetable,distance=..2] origins-plus-plus:witch-of-ink/color/blue