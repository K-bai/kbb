# draw:reset

scoreboard objectives remove draw_carrot

scoreboard objectives remove draw_id
scoreboard objectives remove draw_distance
scoreboard objectives remove draw_lock
scoreboard objectives remove draw_lock_num
# draw_lock = 1 -> x不变
# draw_lock = 2 -> y不变
# draw_lock = 3 -> z不变
scoreboard objectives remove draw_temp

team remove draw_drawer
