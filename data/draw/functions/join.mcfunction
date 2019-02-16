# draw:join

tellraw @s ["[画笔] ","欢迎使用画笔！"]
tellraw @s ["[画笔] ","选择第一个格子右键萝卜钓竿为放置方块"]
tellraw @s ["[画笔] ","选择第二个格子右键萝卜钓竿为删除方块"]
tellraw @s ["[画笔] ","选择第三个格子右键萝卜钓竿可调出菜单调整设置"]
replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick
replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick
replaceitem entity @s hotbar.2 minecraft:carrot_on_a_stick
team join draw_drawer @s

scoreboard players reset @s draw_carrot
scoreboard players set @s draw_distance 10
scoreboard players set @s draw_lock 0

# 设置玩家id
scoreboard players add draw_max_id draw_id 1
execute store result score @s draw_id run scoreboard players get draw_max_id draw_id