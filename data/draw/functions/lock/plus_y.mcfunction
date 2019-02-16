# draw:lock/plus_y

execute if score @s draw_lock matches 2..2 run tellraw @s ["[画笔] 已将锁定向上(y正方向)移动一格"]
execute if score @s draw_lock matches 2..2 run function draw:lock/plus
execute unless score @s draw_lock matches 2..2 run tellraw @s ["[画笔] 画笔未在y轴锁定 无法使用该功能"]