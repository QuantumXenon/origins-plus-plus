tp @s @e[tag=callback_pursuit,limit=1,sort=nearest]
effect give @s minecraft:blindness 2 2 true
effect give @e[tag=callback_pursuit] minecraft:blindness 2 2 true
resource change @s origins-plus-plus:malfunction/callback_pursuit_cooldown -600