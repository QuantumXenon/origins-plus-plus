tag @s add self
execute at @e[type=!minecraft:player,team=lunar-path,distance=..64] run summon minecraft:snowball ~ ~2.5 ~ {Tags:["aggro.init"],Motion:[0.0,-1.0,0.0]}
execute as @e[tag=aggro.init] run data modify entity @s Owner set from entity @e[tag=self,limit=1] UUID
tag @s remove self
tag @e remove aggro.init