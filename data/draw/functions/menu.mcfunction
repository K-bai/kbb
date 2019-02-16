# draw:menu

tellraw @s ["-----画笔菜单-----"]
execute unless score @s draw_lock matches 1..1 run tellraw @s [{"text":"- 点击将画笔锁定在yz平面，即x坐标不变","clickEvent":{"action":"run_command","value":"/function draw:lock/x"},"hoverEvent":{"action":"show_text","value":"点击设置为yz平面锁定"}}]
execute unless score @s draw_lock matches 2..2 run tellraw @s [{"text":"- 点击将画笔锁定在xz平面，即y坐标不变","clickEvent":{"action":"run_command","value":"/function draw:lock/y"},"hoverEvent":{"action":"show_text","value":"点击设置为xz平面锁定"}}]
execute unless score @s draw_lock matches 3..3 run tellraw @s [{"text":"- 点击将画笔锁定在xy平面，即z坐标不变","clickEvent":{"action":"run_command","value":"/function draw:lock/z"},"hoverEvent":{"action":"show_text","value":"点击设置为xy平面锁定"}}]

execute if score @s draw_lock matches 1..1 run tellraw @s [{"text":"- 点击将画笔向东(x正方向)移动一格","clickEvent":{"action":"run_command","value":"/function draw:lock/plus_x"},"hoverEvent":{"action":"show_text","value":"点击向东移动一格"}}]
execute if score @s draw_lock matches 1..1 run tellraw @s [{"text":"- 点击将画笔向西(x负方向)移动一格","clickEvent":{"action":"run_command","value":"/function draw:lock/minus_x"},"hoverEvent":{"action":"show_text","value":"点击向西移动一格"}}]
execute if score @s draw_lock matches 2..2 run tellraw @s [{"text":"- 点击将画笔向上(y正方向)移动一格","clickEvent":{"action":"run_command","value":"/function draw:lock/plus_y"},"hoverEvent":{"action":"show_text","value":"点击向上移动一格"}}]
execute if score @s draw_lock matches 2..2 run tellraw @s [{"text":"- 点击将画笔向下(y负方向)移动一格","clickEvent":{"action":"run_command","value":"/function draw:lock/minus_y"},"hoverEvent":{"action":"show_text","value":"点击向下移动一格"}}]
execute if score @s draw_lock matches 3..3 run tellraw @s [{"text":"- 点击将画笔向南(z正方向)移动一格","clickEvent":{"action":"run_command","value":"/function draw:lock/plus_z"},"hoverEvent":{"action":"show_text","value":"点击向南移动一格"}}]
execute if score @s draw_lock matches 3..3 run tellraw @s [{"text":"- 点击将画笔向北(z负方向)移动一格","clickEvent":{"action":"run_command","value":"/function draw:lock/minus_z"},"hoverEvent":{"action":"show_text","value":"点击向北移动一格"}}]

execute if score @s draw_lock matches 1..3 run tellraw @s [{"text":"- 点击取消画笔锁定","clickEvent":{"action":"run_command","value":"/function draw:lock/remove"},"hoverEvent":{"action":"show_text","value":"点击取消锁定"}}]

tellraw @s [{"text":"- 执行","color":"white"},{"text":"/scoreboard players set @s draw_distance X","color":"blue"},{"text":"\n   可设置画笔距离为X (1<X<20)","color":"white"}]
tellraw @s [{"text":"- 点击退出画笔","clickEvent":{"action":"run_command","value":"/team leave @s"},"hoverEvent":{"action":"show_text","value":"点击退出"}}]
