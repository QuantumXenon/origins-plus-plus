team join deathsworn
tag @s remove Standby_Minion
tag @s add Deathsworn_Minion
data modify entity @s NoAI set value false
data modify entity @s Invulnerable set value false
data modify entity @s PersistenceRequired set value false
data modify entity @s Silent set value false
scale multiply pehkui:interaction_box_width -1
scale multiply pehkui:interaction_box_height -1
scale multiply pehkui:hitbox_width -1
scale multiply pehkui:hitbox_height -1
scale delay set pehkui:model_width 14
scale easing set pehkui:model_width pehkui:exponential_out
scale delay set pehkui:model_height 26
scale easing set pehkui:model_height pehkui:quintic_out
scale multiply pehkui:model_width -1
scale multiply pehkui:model_height -1