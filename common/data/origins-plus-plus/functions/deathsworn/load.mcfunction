scoreboard objectives add Minion_Count dummy
scoreboard objectives add Minion_Count_temp dummy
scoreboard objectives add deathsworndisplayingloyalty dummy
scoreboard objectives add -1 dummy
scoreboard players set #-1 -1 -1
scoreboard objectives add UUID0_temp dummy
scoreboard objectives add UUID1_temp dummy
scoreboard objectives add Killed_UUID0 dummy
scoreboard objectives add Killed_UUID1 dummy
scoreboard objectives add Pos1 dummy
scoreboard objectives add Pos2 dummy
scoreboard objectives add Motion dummy
scoreboard objectives add nearby_minions dummy
scoreboard objectives add calculated_health dummy

function origins-plus-plus:deathsworn/armor_stand
function origins-plus-plus:deathsworn/clear

team add deathsworn "Necromancers"