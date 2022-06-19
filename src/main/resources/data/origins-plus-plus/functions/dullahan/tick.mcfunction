execute at @a[team=jackomancer] run team join jackomancer @e[team=!jackomancer,type=!player,nbt={ArmorItems:[{},{},{},{Count:1b,id:"minecraft:carved_pumpkin"}]},distance=..20]
execute at @a[team=jackomancer] run team leave @e[team=jackomancer,type=!player,nbt={ArmorItems:[{},{},{},{Count:1b,id:"minecraft:carved_pumpkin"}]},distance=20.1..]

execute at @a as @e[tag=JackoMinion,type=zombie] if score @s[distance=10..] Dullahan = @p Dullahan run tp @s ~.3 ~ ~

execute at @a as @e[type=skeleton_horse,tag=steed] if score @s[distance=15..] Nightmare = @p Nightmare run tp @s ~.3 ~ ~
execute at @a as @e[type=skeleton_horse,tag=steed] if score @s[distance=15..] Nightmare = @p Nightmare run tp @s ~.3 ~ ~
execute at @e[type=skeleton_horse,tag=steed] run particle flame ~ ~1 ~ .7 .8 .7 0.01 1