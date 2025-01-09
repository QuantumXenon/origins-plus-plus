tag @s add chainray
tag @s add temppos
scoreboard players set #hit Glacier 0
scoreboard players set #distance Glacier 0
execute positioned ~ ~1.3 ~ run function origins-plus-plus:glacier/ray
tag @s remove chainray
scoreboard objectives add Glacier dummy
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 2