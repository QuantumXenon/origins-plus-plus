tag @s add chainray
tag @s add temppos
scoreboard players set #hit Vishaichian 0
scoreboard players set #distance Vishaichian 0
execute positioned ~ ~1.3 ~ run function origins-plus-plus:vishaichian/ray
tag @s remove chainray
scoreboard objectives add Vishaichian dummy
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 2