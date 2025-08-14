data modify entity @s Pos set from storage origins-plus-plus:temp temppos1

data modify entity @s Motion set value [0d,0d,0d]
data modify entity @s Motion set from storage origins-plus-plus:temp Motion

tag @s add Quick_Attack_Minion

function origins-plus-plus:deathsworn/summon_end

#tellraw @a [{"text":"Minion Motion:"},{"nbt":"Motion","entity":"@s"}]