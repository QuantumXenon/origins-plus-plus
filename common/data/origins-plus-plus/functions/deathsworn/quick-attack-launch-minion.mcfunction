execute as @a[tag=Quick_Attack_Actor,limit=1] run item modify entity @s weapon.mainhand origins-plus-plus:consume

data modify entity @s Pos set from storage origins-plus-plus:temp temppos1

tellraw @a {"storage":"origins-plus-plus:temp","nbt":"Motion"}
tellraw @a [{"text":"Minion Motion:"},{"nbt":"Motion","entity":"@s"}]
data modify entity @s Motion set value [0d,0d,0d]
tellraw @a [{"text":"Minion Motion:"},{"nbt":"Motion","entity":"@s"}]
data modify entity @s Motion set from storage origins-plus-plus:temp Motion
tellraw @a [{"text":"Minion Motion:"},{"nbt":"Motion","entity":"@s"}]

#theres no actual checks related to this so this reset isnt really necessary
data remove storage origins-plus-plus:temp temppos1

tag @s add Quick_Attack_Minion

function origins-plus-plus:deathsworn/summon_end

#tellraw @a [{"text":"Minion Motion:"},{"nbt":"Motion","entity":"@s"}]