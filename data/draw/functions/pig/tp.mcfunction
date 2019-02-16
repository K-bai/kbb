# draw:pig/tp

tp @s ^ ^ ^1
scoreboard players remove @s draw_temp 1
execute if score @s draw_temp matches 1..20 at @s run function draw:pig/tp