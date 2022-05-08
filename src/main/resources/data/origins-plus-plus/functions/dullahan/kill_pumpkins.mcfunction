gamerule showDeathMessages false
execute as @e[tag=JackoMinion,type=zombie] if score @s Dullahan = @p Dullahan run kill @s
execute as @e[tag=JackoMinion,type=wolf] if score @s Dullahan = @p Dullahan run kill @s
scoreboard players reset @s Dullahan
gamerule showDeathMessages true