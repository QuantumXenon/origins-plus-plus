team add badd
team join badd @s
summon wolf ~ ~1 ~ {Team:badd,DeathLootTable:"minecraft:empty",CustomName:"\"StrongWolf\"",ArmorItems:[{Count:1,id:netherite_boots,tag:{Enchantments:[{id:protection,lvl:4}]}},{Count:1,id:netherite_leggings,tag:{Enchantments:[{id:protection,lvl:4}]}},{Count:1,id:netherite_chestplate,tag:{Enchantments:[{id:protection,lvl:4}]}},{Count:1,id:netherite_helmet,tag:{Enchantments:[{id:protection,lvl:4}]}}],ArmorDropChances:[0f,0f,0f,0f]}
particle minecraft:end_rod ~ ~ ~ 2 2 2 2 100
effect give @e[name=StrongWolf,distance=..10] minecraft:speed 1000000 0 true
effect give @e[name=StrongWolf,distance=..10] minecraft:strength 1000000 0 true
playsound minecraft:entity.wolf.howl player @a[distance=..20] ~ ~ ~ 100 1