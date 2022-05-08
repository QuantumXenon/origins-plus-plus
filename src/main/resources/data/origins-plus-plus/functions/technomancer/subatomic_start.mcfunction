effect give @s resistance 2 10 true
particle enchant ~ ~1 ~ 0.5 0.5 0.5 0.5 1 force @a
execute at @s run playsound minecraft:block.chain.place voice @a ~ ~ ~ 2 0.5
execute at @s run playsound minecraft:block.chain.break voice @a ~ ~ ~ 2 0.5

execute at @s run playsound minecraft:block.anvil.land voice @a ~ ~ ~ 2 0.5

execute at @s run particle enchant ~ ~1 ~ 0.5 0.5 0.5 0.5 5 force @a
execute at @s run particle enchant ~ ~1 ~ 0.5 0.5 0.5 0.5 5 force @a
execute at @s run particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.5 5 force @a
execute positioned ~ ~1.3 ~ run function origins-plus-plus:technomancer/subatomic