# draw:pig/summon

tag @s add draw_temp_player

# summon
execute as @e[tag=draw_pig] if score @s draw_id = @a[tag=draw_temp_player,limit=1] draw_id run tag @s add draw_temp_pig
execute unless entity @e[tag=draw_temp_pig] at @s run summon minecraft:sheep ~ ~ ~ {Tags:["draw_pig","draw_pig_new","draw_temp_pig"],NoAI:1,Invulnerable:1}
execute store result score @e[tag=draw_pig_new,limit=1] draw_id run scoreboard players get @s draw_id

# tp
execute store result score @e[tag=draw_temp_pig] draw_temp run scoreboard players get @s draw_distance
execute at @s anchored eyes run tp @e[tag=draw_temp_pig] ^ ^ ^ ~ ~
execute as @e[tag=draw_temp_pig] at @s run function draw:pig/tp
execute if score @s draw_lock matches 1..1 as @e[tag=draw_temp_pig] store result entity @s Pos[0] double 0.001 run scoreboard players get @s draw_lock_num
execute if score @s draw_lock matches 2..2 as @e[tag=draw_temp_pig] store result entity @s Pos[1] double 0.001 run scoreboard players get @s draw_lock_num
execute if score @s draw_lock matches 3..3 as @e[tag=draw_temp_pig] store result entity @s Pos[2] double 0.001 run scoreboard players get @s draw_lock_num

tag @a[tag=draw_temp_player] remove draw_temp_player
tag @e[tag=draw_temp_pig] remove draw_temp_pig
tag @e[tag=draw_pig_new] remove draw_pig_new