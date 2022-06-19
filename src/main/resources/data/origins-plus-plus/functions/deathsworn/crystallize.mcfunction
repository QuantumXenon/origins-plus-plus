data modify entity @s ArmorDropChances set value [1.0F,1.0F,1.0F,1.0F]
data modify entity @s HandDropChances set value [1.0F,1.0F]
summon item ~ ~ ~ {Tags:["lnc_Heart"],Glowing:1b,PickupDelay:1,Item:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{lnc:1,display:{Name:'{"text":"Petrified Heart","color":"#786C6C","bold":false,"italic":false}'}}}}

execute if entity @s[type=creeper] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "creeper"
execute if entity @s[type=ghast] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "ghast"
execute if entity @s[type=skeleton] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "skeleton"
execute if entity @s[type=wither_skeleton] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "wither_skeleton"
execute if entity @s[type=zombie] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "zombie"
execute if entity @s[type=husk] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "husk"
execute if entity @s[type=stray] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "stray"
execute if entity @s[type=drowned] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "drowned"
execute if entity @s[type=blaze] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "blaze"
execute if entity @s[type=magma_cube] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "magma_cube"
execute if entity @s[type=spider] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "spider"
execute if entity @s[type=cave_spider] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "cave_spider"
execute if entity @s[type=evoker] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "evoker"
execute if entity @s[type=vindicator] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "vindicator"
execute if entity @s[type=pillager] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "pillager"
execute if entity @s[type=witch] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "witch"
execute if entity @s[type=zombified_piglin] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "zombified_piglin"
execute if entity @s[type=piglin_brute] run data modify entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.mob set value "piglin_brute"
execute as @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] at @s unless data entity @s Item.tag.mob run data modify entity @s Item.tag.mob set value "zombie"

execute store result entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Health float 1 run scoreboard players get @s lnc_PH3
execute store result entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Armor float 1 run scoreboard players get @s lnc_PH1
execute store result entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.AD float 1 run scoreboard players get @s lnc_PH2
execute store result entity @e[tag=lnc_Heart,distance=..1,sort=nearest,limit=1] Item.tag.Size float 1 run data get entity @s Size 1