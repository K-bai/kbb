# draw:pig/kill

tag @s add draw_temp_pig

execute as @a[team=draw_drawer] if score @s draw_id = @e[tag=draw_temp_pig,limit=1] draw_id run tag @s add draw_temp_player
execute unless entity @a[tag=draw_temp_player] at @s run kill @s

tag @a[tag=draw_temp_player] remove draw_temp_player
tag @e[tag=draw_temp_pig] remove draw_temp_pig