summon armor_stand ~ ~ ~ {Tags:["Living_Placeholder"],Invisible:true,Marker:true,Invulnerable:true}

execute if entity @a[tag=Crystallize_Actor,distance=..2] store result score @e[tag=Living_Placeholder,distance=..0.1,sort=nearest,limit=1] Minion_Count run data get entity @s Item.tag.Minion_Count
execute if entity @a[tag=Crystallize_Actor,distance=..2] store result score @e[tag=Living_Placeholder,distance=..0.1,sort=nearest,limit=1] Owner_UUID0 run data get entity @s Item.tag.UUID0
execute if entity @a[tag=Crystallize_Actor,distance=..2] store result score @e[tag=Living_Placeholder,distance=..0.1,sort=nearest,limit=1] Owner_UUID1 run data get entity @s Item.tag.UUID1

execute unless entity @a[tag=Crystallize_Actor,distance=..2] store result score @e[tag=Living_Placeholder,distance=..0.1,sort=nearest,limit=1] Minion_Count run data get entity @s Item.tag.Minion_Count
execute unless entity @a[tag=Crystallize_Actor,distance=..2] store result score @e[tag=Living_Placeholder,distance=..0.1,sort=nearest,limit=1] Owner_UUID0 run data get entity @s Item.tag.UUID0

execute unless entity @a[tag=Crystallize_Actor,distance=..2] store result score @e[tag=Living_Placeholder,distance=..0.1,sort=nearest,limit=1] Owner_UUID1 run data get entity @s Item.tag.UUID1
