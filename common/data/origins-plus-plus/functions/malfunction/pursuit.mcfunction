tp @s @e[limit=1,tag=tp]
effect give @s minecraft:blindness 2 2 true
effect give @e[tag=tp] minecraft:blindness 2 2 true
resource change @s origins-plus-plus:malfunction/callback_pursuit_cooldown -600