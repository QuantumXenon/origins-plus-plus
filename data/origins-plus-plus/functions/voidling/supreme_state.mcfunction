playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 10 0.15
tag @e[distance=1..100] add void_sight
team add voidling
team modify voidling color dark_purple
team join voidling @e[tag=void_sight]
effect give @e[tag=void_sight] minecraft:glowing 3600 0 true
resource change @s origins-plus-plus:voidling/void_energy_charge -300
resource change @s origins-plus-plus:voidling/supreme_state_resource 2