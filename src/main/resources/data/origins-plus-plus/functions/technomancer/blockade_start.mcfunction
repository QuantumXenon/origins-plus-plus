tag @s add chainray
tag @s add temppos
scoreboard players set #hit chaintemp 0
scoreboard players set #distance chaintemp 0
execute positioned ~ ~1.3 ~ run function origins-plus-plus:technomancer/blockade
tag @s remove chainray
scoreboard objectives add chaintemp dummy
playsound minecraft:entity.illusioner.mirror_move master @a[distance=1..15] ~ ~ ~ 1 2