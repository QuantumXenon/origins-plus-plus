data modify entity @s ArmorDropChances set value [1.0F,1.0F,1.0F,1.0F]
data modify entity @s HandDropChances set value [1.0F,1.0F]
summon minecraft:item ~ ~ ~ {Tags:["Petrified_Heart"],Glowing:1b,PickupDelay:1,Item:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{CustomModelData:1,lnc:1,display:{Name:'{"translate":"origins-plus-plus.deathsworn.petrified_heart","color":"#F01E67","bold":false,"italic":false}'}}}}

execute if entity @s[type=minecraft:blaze] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Blaze"
execute if entity @s[type=minecraft:cave_spider] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Cave_Spider"
execute if entity @s[type=minecraft:creeper] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Creeper"
execute if entity @s[type=minecraft:drowned] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Drowned"
execute if entity @s[type=minecraft:evoker] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Evoker"
execute if entity @s[type=minecraft:ghast] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Ghast"
execute if entity @s[type=minecraft:husk] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Husk"
execute if entity @s[type=minecraft:magma_cube] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Magma_Cube"
execute if entity @s[type=minecraft:piglin_brute] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Piglin_Brute"
execute if entity @s[type=minecraft:pillager] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Pillager"
execute if entity @s[type=minecraft:skeleton] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Skeleton"
execute if entity @s[type=minecraft:spider] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Spider"
execute if entity @s[type=minecraft:stray] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Stray"
execute if entity @s[type=minecraft:vindicator] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Vindicator"
execute if entity @s[type=minecraft:witch] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Witch"
execute if entity @s[type=minecraft:wither_skeleton] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Wither Skeleton"
execute if entity @s[type=minecraft:zombie] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Zombie"
execute if entity @s[type=minecraft:zombified_piglin] run data modify entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "Zombified_Piglin"
execute as @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] at @s unless data entity @s Item.tag.mob run data modify entity @s Item.tag.mob set value "Zombie"

execute store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Health float 1 run scoreboard players get @s Minion_Health
execute store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Armor float 1 run scoreboard players get @s Minion_Armor
execute store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.AD float 1 run scoreboard players get @s Minion_Attack_Damage
execute store result entity @e[tag=Petrified_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Size float 1 run data get entity @s Size 1