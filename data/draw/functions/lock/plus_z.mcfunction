# draw:lock/plus_z

execute if score @s draw_lock matches 3..3 run tellraw @s ["[画笔] 已将锁定向南(z正方向)移动一格"]
execute if score @s draw_lock matches 3..3 run function draw:lock/plus
execute unless score @s draw_lock matches 3..3 run tellraw @s ["[画笔] 画笔未在z轴锁定 无法使用该功能"]