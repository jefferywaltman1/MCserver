execute as @a run scoreboard players operation @s mana += @s mana_regen
execute as @a if score @s class matches 1 run scoreboard players add @s mana 5
execute as @a if score @s mana > @s max_mana run scoreboard players operation @s mana = @s max_mana
execute as @e[tag=id,type=marker] run function roguecraft:mana_bar_test with entity @s data

execute as @a[tag=hub] run function roguecraft:hubclear
execute if entity @a[tag=!hub] unless entity @a[tag=victory] run scoreboard players add @e[tag=master,type=marker] difficulty 1
execute store result bossbar minecraft:difficulty value run scoreboard players get @e[type=marker,tag=master,limit=1] difficulty
execute if score @e[type=marker,tag=master,limit=1] difficulty >= @e[type=marker,tag=master,limit=1] difficulty_val_max run function roguecraft:increase_difficulty_1

execute as @a[tag=!hub] run function roguecraft:ability/tell_1

execute if entity @a[tag=hub] run weather clear
execute if entity @a[tag=victory] run weather clear

execute if data storage minecraft:master {run_active:1} run execute as @a[tag=hub] run function roguecraft:game_loop/run_start_singular with storage master Region
execute if data storage minecraft:master {run_active:0} run execute as @a[tag=!hub] run function roguecraft:game_loop/run_end_singular

execute as @a at @s if entity @a[distance=..10,scores={class=2},gamemode=!spectator] run effect give @s[tag=!hub] minecraft:regeneration 2 0 true

#compass
execute as @a[scores={compass=1..}] at @s run function roguecraft:compass

schedule function roguecraft:second 1s