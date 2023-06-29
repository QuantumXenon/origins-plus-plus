give @s minecraft:written_book{pages:['{"translate":"origins-plus-plus.end-mage.book.welcome"}','{"translate":"origins-plus-plus.book.mana_potions"}','{"translate":"origins-plus-plus.end-mage.book.hidden_crafts"}','{"translate":"origins-plus-plus.end-mage.book.infinite_range"}','{"translate":"origins-plus-plus.end-mage.book.waypoint"}'],title:"Hidden Knowledge",author:"End Mage"}
clear @s minecraft:book 1
particle minecraft:enchant ~ ~ ~ 2 2 2 2 1000
particle minecraft:enchanted_hit ~ ~ ~ 3 3 3 3 1000
playsound minecraft:block.note_block.iron_xylophone player @a[distance=..20] ~ ~ ~ 100 0.9 1