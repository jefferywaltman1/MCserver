execute store result storage minecraft:master Region.X int 1 run scoreboard players get @e[tag=master,limit=1] region_x
execute store result storage minecraft:master Region.Z int 1 run scoreboard players get @e[tag=master,limit=1] region_z
scoreboard players add @e[type=marker,tag=master] run_number 1
data merge storage minecraft:master {start:1}
scoreboard players set @e[type=marker,tag=master,limit=1] difficulty_val_max 450

schedule clear roguecraft:second
schedule clear roguecraft:three_second
schedule clear roguecraft:shops/switch_shop_text
function roguecraft:second
function roguecraft:three_second
function roguecraft:shops/switch_shop_text

function roguecraft:game_loop/forceload_init with storage minecraft:master Region

schedule function roguecraft:countdown/countdown_5 1s append
schedule function roguecraft:countdown/countdown_4 2s append
schedule function roguecraft:countdown/countdown_3 3s append
schedule function roguecraft:countdown/countdown_2 4s append
schedule function roguecraft:countdown/countdown_1 5s append
schedule function roguecraft:game_loop/run_start_2 6s replace