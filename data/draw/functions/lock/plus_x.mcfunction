# draw:lock/plus_x

execute if score @s draw_lock matches 1..1 run tellraw @s ["[画笔] 已将锁定向东(x正方向)移动一格"]
execute if score @s draw_lock matches 1..1 run function draw:lock/plus
execute unless score @s draw_lock matches 1..1 run tellraw @s ["[画笔] 画笔未在x轴锁定 无法使用该功能"]