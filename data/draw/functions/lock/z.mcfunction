# draw:lock/z

tag @s add draw_temp_player
scoreboard players set @s draw_lock 3
tellraw @s ["[画笔] 已设置为xy平面锁定"]

# get id
execute as @e[tag=draw_pig] if score @s draw_id = @a[tag=draw_temp_player,limit=1] draw_id run tag @s add draw_temp_pig

# save lock pos
execute as @e[tag=draw_temp_pig] store result score @s draw_lock_num run data get entity @s Pos[2] 1000

tag @a[tag=draw_temp_player] remove draw_temp_player
tag @e[tag=draw_temp_pig] remove draw_temp_pig