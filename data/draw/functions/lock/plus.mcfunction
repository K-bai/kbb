# draw:lock/plus

tag @s add draw_temp_player

# get id
execute as @e[tag=draw_pig] if score @s draw_id = @a[tag=draw_temp_player,limit=1] draw_id run tag @s add draw_temp_pig

# add lock pos
scoreboard players add @e[tag=draw_temp_pig] draw_lock_num 1000

tag @a[tag=draw_temp_player] remove draw_temp_player
tag @e[tag=draw_temp_pig] remove draw_temp_pig