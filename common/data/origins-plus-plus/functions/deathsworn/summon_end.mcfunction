team join deathsworn
tag @s remove Standby_Minion
tag @s add Deathsworn_Minion
data modify entity @s NoAI set value false
data modify entity @s Invulnerable set value false
data modify entity @s PersistenceRequired set value false
data modify entity @s Silent set value false
scale multiply pehkui:interaction_box_width 100
scale multiply pehkui:interaction_box_height 100
scale reset pehkui:hitbox_width
scale reset pehkui:hitbox_height
scale delay set pehkui:model_width 20
scale easing set pehkui:model_width pehkui:exponential_out
scale delay set pehkui:model_height 10
scale easing set pehkui:model_height pehkui:circular_in
scale multiply pehkui:model_width 100
scale multiply pehkui:model_height 100