data merge storage minecraft:master {start:0}
data merge storage minecraft:master {stronghold:0b}
data merge storage minecraft:master {end:0}
data merge storage minecraft:master {end_generation_list:["c3","c2","d3","c4","b3","b2","d2","d4","b4","d1","c1","b1","a2","a3","a4","b5","c5","d5","e4","e3","e2","e1","a1","a5","e1"]}
data merge storage minecraft:master {run_active:1}
data merge storage minecraft:master {end_generated:0}
scoreboard players set @e[type=marker,tag=master] blaze_rods 0

execute at @r run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 bedrock
execute at @r run setworldspawn ~ ~ ~
time set day
weather clear
title @a subtitle {"translate":"roguecraft.bossbar.wait"}
title @a title [{"translate":"roguecraft.bossbar.run","bold":true,"color":"green"},{"text":" "},{"score":{"name":"@e[tag=master,limit=1]","objective":"run_number"},"bold":true,"color":"green"}]

gamerule playersSleepingPercentage 0

execute as @e[type=marker,tag=master] run function roguecraft:game_loop/shift_game_region
$forceload remove $(X) $(Z)
execute in the_nether run forceload add 0 0

bossbar set minecraft:difficulty players @a
bossbar set minecraft:difficulty name ["",{"translate":"roguecraft.bossbar.difficulty_level"},{"text":": 1"}]
scoreboard players set @e[type=marker,tag=master] difficulty 0
scoreboard players set @e[type=marker,tag=master] difficulty_level 1