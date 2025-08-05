execute as @a[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"origins-plus-plus:end-mage/resource"}]}}}] store result score @s end-mage-resource run data get entity @s cardinal_components."apoli:powers".Powers[{Type:"origins-plus-plus:end-mage/resource"}].Data

execute as @a at @s if score @s end-mage-resource matches 0..100 run summon minecraft:endermite ~ ~1 ~ {CustomName:'{"translate":"origins-plus-plus.end-mage.endermite","color":"dark_purple"}'}

schedule function origins-plus-plus:end-mage/mana_bug 200t
