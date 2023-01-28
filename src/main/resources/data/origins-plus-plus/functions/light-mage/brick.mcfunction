fill ~-2 ~-3 ~-2 ~2 ~3 ~2 minecraft:flowering_azalea_leaves replace #origins-plus-plus:replaceable
fill ~-1 ~-2 ~-1 ~1 ~2 ~1 air replace minecraft:flowering_azalea_leaves
effect give @e[distance=..3] minecraft:poison 20 1 true
effect give @e[distance=..3] minecraft:slowness 20 1 true
effect give @e[distance=..3] minecraft:nausea 20 1 true
particle minecraft:spore_blossom_air ~ ~ ~ 3 3 3 1 200
playsound minecraft:block.beacon.power_select player @a[distance=..20] ~ ~ ~ 100 1.9