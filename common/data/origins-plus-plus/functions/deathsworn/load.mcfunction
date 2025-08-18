scoreboard objectives add Minion_Count dummy
scoreboard objectives add Minion_Count_temp dummy
scoreboard objectives add deathsworndisplayingloyalty dummy
scoreboard objectives add -1 dummy
scoreboard players set #-1 -1 -1
scoreboard objectives add UUID0_temp dummy
scoreboard objectives add UUID1_temp dummy
scoreboard objectives add Pos1 dummy
scoreboard objectives add Pos2 dummy
scoreboard objectives add Motion dummy

function origins-plus-plus:deathsworn/clear

team add deathsworn "Necromancers"