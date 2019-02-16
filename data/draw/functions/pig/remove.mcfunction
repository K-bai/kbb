# draw:pig/remove

tag @s add draw_temp_player

# get id
execute as @e[tag=draw_pig] if score @s draw_id = @a[tag=draw_temp_player,limit=1] draw_id run tag @s add draw_temp_pig

# remove
execute as @e[tag=draw_temp_pig] at @s positioned ~-2 ~-2 ~-2 run function draw:brush/eraser

tag @a[tag=draw_temp_player] remove draw_temp_player
tag @e[tag=draw_temp_pig] remove draw_temp_pig