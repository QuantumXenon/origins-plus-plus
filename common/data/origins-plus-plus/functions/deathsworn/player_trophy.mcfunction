summon armor_stand ~ ~ ~
data modify entity @e[type=armor_stand,distance=..0.1,limit=1] HandItems[0] set from entity @s Inventory[{Slot:9b}]
item replace entity @s container.9 with minecraft:player_head
item modify entity @s container.9 origins-plus-plus:get_head

data modify storage origins-plus-plus:deathsworn player_trophy set from entity @s Inventory[{Slot:9b}]
item replace entity @s container.9 from entity @e[type=armor_stand,distance=..0.1,limit=1] weapon.mainhand
execute as @e[type=armor_stand,distance=..0.1,limit=1] run kill
