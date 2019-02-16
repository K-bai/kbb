# draw:lock/minus_x

execute if score @s draw_lock matches 2..2 run tellraw @s ["[画笔] 已将锁定向下(y负方向)移动一格"]
execute if score @s draw_lock matches 2..2 run function draw:lock/minus
execute unless score @s draw_lock matches 2..2 run tellraw @s ["[画笔] 画笔未在y轴锁定 无法使用该功能"]