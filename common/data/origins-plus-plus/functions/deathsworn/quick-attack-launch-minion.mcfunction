data modify entity @s Pos set from storage origins-plus-plus:temp temppos1

function origins-plus-plus:deathsworn/summon_end

data modify entity @s Motion set value [0d,0d,0d]
data modify entity @s Motion set from storage origins-plus-plus:temp Motion

data remove storage origins-plus-plus:temp temppos1
data remove storage origins-plus-plus:temp Motion
data remove storage origins-plus-plus:temp pos1
data remove storage origins-plus-plus:temp pos2

tag @s add Quick_Attack_Minion

tellraw @a [{"text":"Minion Motion:"},{"nbt":"Motion","entity":"@s"}]