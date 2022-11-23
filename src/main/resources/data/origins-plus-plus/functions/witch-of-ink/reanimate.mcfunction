execute if entity @s[nbt={variant:"minecraft:creebet"}] run summon creeper ^ ^ ^0.75 {Team:"lwi_Witch"}

execute if entity @s[nbt={variant:"minecraft:void"}] run summon vex ^ ^ ^0.75 {Team:"lwi_Witch"}

execute if entity @s[nbt={variant:"minecraft:fighters"}] run summon husk ^1 ^ ^0.75 {Team:"lwi_Witch"}
execute if entity @s[nbt={variant:"minecraft:fighters"}] run summon drowned ^-1 ^ ^0.75 {Team:"lwi_Witch"}

execute if entity @s[nbt={variant:"minecraft:wanderer"}] run summon enderman ^1 ^ ^0.75 {Team:"lwi_Witch"}

execute if entity @s[nbt={variant:"minecraft:graham"}] run summon zombie ^ ^ ^0.75 {CustomName:'{"text":"Gnome"}',Team:"lwi_Witch"}

execute if entity @s[nbt={variant:"minecraft:courbet"}] run summon stray ^1 ^ ^0.75 {HandItems:[{id:"stone_pickaxe"}],Team:"lwi_Witch"}
execute if entity @s[nbt={variant:"minecraft:courbet"}] run summon stray ^-1 ^ ^0.75 {HandItems:[{id:"stone_pickaxe"}],Team:"lwi_Witch"}

execute if entity @s[nbt={variant:"minecraft:kebab"}] run summon item ^ ^ ^0.75 {Item:{id:"cooked_beef",Count:1}}

execute if entity @s[nbt={variant:"minecraft:plant"}] run summon item ^ ^ ^0.75 {Item:{id:"fern",Count:1}}

execute if entity @s[nbt={variant:"minecraft:pool"}] run summon enderman ^ ^ ^0.75 {Team:"lwi_Witch"}

execute if entity @s[nbt={variant:"minecraft:sea"}] run summon item ^ ^ ^0.75 {Item:{id:"rose_bush",Count:1}}

execute if entity @s[nbt={variant:"minecraft:bust"}] run summon enderman ^ ^ ^0.75 {Team:"lwi_Witch"}

execute if entity @s[nbt={variant:"minecraft:skull_and_roses"}] run summon skeleton ^ ^ ^0.75 {Team:"lwi_Witch"}

execute if entity @s[nbt={variant:"minecraft:stage"}] run summon spider ^ ^ ^0.75 {Team:"lwi_Witch"}

execute if entity @s[nbt={variant:"minecraft:skeleton"}] run summon skeleton ^ ^ ^0.75 {Team:"lwi_Witch"}

execute if entity @s[nbt={variant:"minecraft:burning_skull"}] run summon item ^ ^ ^0.75 {Invulnerable:1,Fire:1000,HasVisualFire:true,Item:{id:"skeleton_skull",Count:1}}

execute if entity @s[nbt={variant:"minecraft:pigscene"}] run summon pig ^ ^ ^0.75 {Team:"lwi_Witch"}

kill @s[type=painting]