# draw:tick

# delete pig
execute as @e[tag=draw_pig] run function draw:pig/kill
# summon and tp pig
execute as @a[team=draw_drawer] run function draw:pig/summon_tp

execute as @a[scores={draw_carrot=1..},team=draw_drawer,nbt={SelectedItemSlot:0}] at @s run function draw:pig/place
execute as @a[scores={draw_carrot=1..},team=draw_drawer,nbt={SelectedItemSlot:1}] at @s run function draw:pig/remove
execute as @a[scores={draw_carrot=1..},team=draw_drawer,nbt={SelectedItemSlot:2}] run function draw:menu
scoreboard players reset @a[scores={draw_carrot=1..}] draw_carrot