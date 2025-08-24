#gear minions
kill @e[tag=Deathsworn_Armor_Stand]
execute if entity @a[tag=Deathsworn_Killed_Player,limit=1] run say death skipped, player died
execute as @a at @s run summon armor_stand ~ -70 ~ {Invisible:1b,Tags:["Deathsworn_Armor_Stand"]}
execute as @a at @a positioned ~ -70 ~ store result score @e[tag=Deathsworn_Armor_Stand,distance=..1,sort=nearest,limit=1] Killed_UUID0 run data get entity @s UUID[0]
execute as @a at @a positioned ~ -70 ~ store result score @e[tag=Deathsworn_Armor_Stand,distance=..1,sort=nearest,limit=1] Killed_UUID1 run data get entity @s UUID[1]
#execute as @e[tag=Deathsworn_Armor_Stand] unless score @s Killed_UUID1 matches 0 run say has uuid
execute as @a at @s positioned ~ -70 ~ run data modify entity @e[tag=Deathsworn_Armor_Stand,distance=..1,sort=nearest,limit=1] HandItems[0] set from entity @s SelectedItem
execute as @a at @s positioned ~ -70 ~ run data modify entity @e[tag=Deathsworn_Armor_Stand,distance=..1,sort=nearest,limit=1] HandItems[1] set from entity @s Inventory[{Slot:-106b}]
execute as @a at @s positioned ~ -70 ~ run data modify entity @e[tag=Deathsworn_Armor_Stand,distance=..1,sort=nearest,limit=1] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
execute as @a at @s positioned ~ -70 ~ run data modify entity @e[tag=Deathsworn_Armor_Stand,distance=..1,sort=nearest,limit=1] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
execute as @a at @s positioned ~ -70 ~ run data modify entity @e[tag=Deathsworn_Armor_Stand,distance=..1,sort=nearest,limit=1] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
execute as @a at @s positioned ~ -70 ~ run data modify entity @e[tag=Deathsworn_Armor_Stand,distance=..1,sort=nearest,limit=1] ActiveEffects set from entity @s ActiveEffects

execute as @e[tag=Deathsworn_Armor_Stand] if data entity @s ArmorItems[{id:"minecraft:netherite_chestplate"}] run say netherite chest

#not every tick because the timeline is: store inventory - player dies // new tick // store inventory ... and never the other way around
schedule function origins-plus-plus:deathsworn/armor_stand 2t