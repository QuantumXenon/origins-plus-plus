function origins-plus-plus:deathsworn/summon_end
scale delay set pehkui:model_width 0
scale delay set pehkui:model_height 0

data modify entity @s Pos set from storage origins-plus-plus:deathsworn temppos1

data modify entity @s Motion set from storage origins-plus-plus:deathsworn Motion
tellraw @a [{"text":"Minion Motion:"},{"nbt":"Motion","entity":"@s"}]

#theres no actual checks related to this so this reset isnt really necessary, do it anyways in case something somehow breaks
data remove storage origins-plus-plus:deathsworn temppos1

tag @s add Quick_Attack_Minion

power grant @s origins-plus-plus:deathsworn/quick_attack_death

execute as @a[tag=Quick_Attack_Actor,limit=1] run item modify entity @s weapon.mainhand origins-plus-plus:consume
