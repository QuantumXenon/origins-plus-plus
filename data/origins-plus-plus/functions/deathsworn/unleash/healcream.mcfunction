summon minecraft:item ~ ~ ~ {Motion:[0.0,0.25,0.0],Glowing:1b,PickupDelay:1,Item:{id:"minecraft:magma_cream",Count:1b,tag:{lnc:2}}}
kill @s[nbt={Size:0}]
execute store result entity @s Size byte 1 run data get entity @s Size 0.5 