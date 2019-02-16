# draw:init

# init

scoreboard objectives add draw_carrot minecraft.used:minecraft.carrot_on_a_stick ["draw_使用画笔"]

scoreboard objectives add draw_id dummy ["draw_id"]
scoreboard objectives add draw_distance dummy ["draw_画笔距离"]
scoreboard objectives add draw_lock dummy ["draw_平面锁定"]
scoreboard objectives add draw_lock_num dummy ["draw_平面锁定坐标"]
# draw_lock = 1 -> x不变
# draw_lock = 2 -> y不变
# draw_lock = 3 -> z不变
scoreboard objectives add draw_temp dummy ["draw_临时"]

team add draw_drawer
team modify draw_drawer color black