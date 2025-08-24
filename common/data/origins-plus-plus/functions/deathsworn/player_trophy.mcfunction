#on the off chance a player is using keepinventory, replace the item but give it back after
execute summon armor_stand run tag @s add temp_armorstand
data modify entity @e[type=armor_stand,distance=..0.1,limit=1,tag=temp_armorstand] HandItems[0] set from entity @s Inventory[{Slot:9b}]
item replace entity @s container.9 with minecraft:player_head
item modify entity @s container.9 origins-plus-plus:get_head

data modify storage origins-plus-plus:deathsworn player_trophy set from entity @s Inventory[{Slot:9b}]
item replace entity @s container.9 from entity @e[type=armor_stand,distance=..0.1,limit=1,tag=temp_armorstand] weapon.mainhand
execute as @e[type=armor_stand,distance=..0.1,limit=1,tag=temp_armorstand] run kill
