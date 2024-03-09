execute as @a at @s if entity @a[distance=..10,scores={class=2},gamemode=!spectator] run effect give @s[tag=!hub] minecraft:regeneration 3 0 true
execute if entity @e[type=marker,tag=master,limit=1] unless block 3 100 67 minecraft:black_concrete run place template roguecraft:hub_no_entities -29 96 -14

execute store result storage master difficulty int 1 run scoreboard players get @e[type=marker,tag=master,limit=1] difficulty_level
execute at @a as @e[distance=..64,tag=!buffed,type=#roguecraft:difficulty_impacted] unless data entity @s {CustomName:' "Ender Dragon" '} run function roguecraft:difficulty/apply_difficulty with storage master

execute as @a[scores={version_num=1..}] unless data storage minecraft:master version_num store result storage minecraft:master version_num int 1 run scoreboard players get @s version_num
execute unless data storage minecraft:master version_num run function roguecraft:update/110/main 
execute if entity @a if data storage minecraft:master {run_active:0} if data storage minecraft:master {version_num:1} run function roguecraft:update/111/main 
execute if entity @a if data storage minecraft:master {run_active:0} if data storage minecraft:master {version_num:2} run function roguecraft:update/112/main 

kill @e[tag=main_storage]

schedule function roguecraft:three_second 3s append