#gear minions
kill @e[tag=Deathsworn_Armor_Stand]
execute as @a at @s run summon armor_stand ~ -70 ~ {Invisible:1b,Tags:["Deathsworn_Armor_Stand"]}
execute as @a at @a positioned ~ -70 ~ store result score @e[tag=Deathsworn_Armor_Stand,sort=nearest,limit=1] Killed_UUID0 run data get entity @s UUID[0]
execute as @a at @a positioned ~ -70 ~ store result score @e[tag=Deathsworn_Armor_Stand,sort=nearest,limit=1] Killed_UUID1 run data get entity @s UUID[1]
execute as @a at @s positioned ~ -70 ~ run data modify entity @e[tag=Deathsworn_Armor_Stand,sort=nearest,limit=1] HandItems[0] set from entity @s SelectedItem
execute as @a at @s positioned ~ -70 ~ run data modify entity @e[tag=Deathsworn_Armor_Stand,sort=nearest,limit=1] HandItems[1] set from entity @s Inventory[{Slot:-106b}]
execute as @a at @s positioned ~ -70 ~ run data modify entity @e[tag=Deathsworn_Armor_Stand,sort=nearest,limit=1] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
execute as @a at @s positioned ~ -70 ~ run data modify entity @e[tag=Deathsworn_Armor_Stand,sort=nearest,limit=1] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
execute as @a at @s positioned ~ -70 ~ run data modify entity @e[tag=Deathsworn_Armor_Stand,sort=nearest,limit=1] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
execute as @a at @s positioned ~ -70 ~ run data modify entity @e[tag=Deathsworn_Armor_Stand,sort=nearest,limit=1] ActiveEffects set from entity @s ActiveEffects

#not every tick because the timeline is: store inventory - player dies // new tick // store inventory ... and never the other way around
schedule function origins-plus-plus:deathsworn/armor_stand 2t