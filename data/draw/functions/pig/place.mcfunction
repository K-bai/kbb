# draw:pig/place

tag @s add draw_temp_player

# get id
execute as @e[tag=draw_pig] if score @s draw_id = @a[tag=draw_temp_player,limit=1] draw_id run tag @s add draw_temp_pig

# place
execute as @e[tag=draw_temp_pig] at @s positioned ~-2 ~-2 ~-2 run clone -97 98 -175 -93 102 -179 ~ ~ ~ masked

tag @a[tag=draw_temp_player] remove draw_temp_player
tag @e[tag=draw_temp_pig] remove draw_temp_pig