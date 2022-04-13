gamerule showDeathMessages false
execute as @e[tag=JackoMinion,type=zombie] if score @s jackoID = @p jackoID run kill @s
execute as @e[tag=JackoMinion,type=wolf] if score @s jackoID = @p jackoID run kill @s
scoreboard players reset @s jackoID
gamerule showDeathMessages true