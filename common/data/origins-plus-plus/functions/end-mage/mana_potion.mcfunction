clear @s minecraft:honey_bottle 1
give @s minecraft:potion{tag:empty,display:{Name:'[{"translate":"origins-plus-plus.item.mana_potion","italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"origins-plus-plus.item.mana_potion.capacity","italic":false}]']}} 1
resource change @s origins-plus-plus:end-mage/resource -100
particle minecraft:enchant ~ ~ ~ 2 2 2 2 1000
particle minecraft:enchanted_hit ~ ~ ~ 3 3 3 3 1000
playsound minecraft:block.brewing_stand.brew player @a[distance=..10] ~ ~ ~ 100 0.9 1