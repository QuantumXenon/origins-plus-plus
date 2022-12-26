execute store result score @s UUID1 run data get entity @s UUID[0]
execute store result score @s UUID2 run data get entity @s UUID[1]
execute store result score @s UUID3 run data get entity @s UUID[2]
execute store result score @s UUID4 run data get entity @s UUID[3]

summon zombie ~ ~ ~ {NoAI:1b,Tags:["ljs_Clone"],Invulnerable:0}
data modify entity @e[tag=ljs_Clone,limit=1,sort=nearest] ArmorItems[3] set value {Count:1b,id:"minecraft:player_head"}
item modify entity @e[tag=ljs_Clone,limit=1,sort=nearest] armor.head origins-plus-plus:get_head
data modify entity @e[tag=ljs_Clone,limit=1,sort=nearest] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
data modify entity @e[tag=ljs_Clone,limit=1,sort=nearest] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
data modify entity @e[tag=ljs_Clone,limit=1,sort=nearest] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]

resource set @s origins-plus-plus:enigma/clone_cooldown 5

effect give @s invisibility 10000 0
effect give @e[tag=ljs_Clone] invisibility 10000 0