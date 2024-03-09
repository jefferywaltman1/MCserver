scoreboard players set @e[tag=master,type=minecraft:marker] difficulty 0
scoreboard players add @e[type=minecraft:marker,tag=master,limit=1] difficulty_level 1
execute store result storage minecraft:master difficulty int 1 run scoreboard players get @e[tag=master,type=marker,limit=1] difficulty_level
execute if score @e[type=minecraft:marker,tag=master,limit=1] difficulty_level matches 11.. as @a unless data entity @s {active_effects:[{id:"minecraft:health_boost"}]} run function roguecraft:difficulty/decrease_health_1
execute if score @e[type=minecraft:marker,tag=master,limit=1] difficulty_level matches 11.. as @a if data entity @s {active_effects:[{id:"minecraft:health_boost"}]} run function roguecraft:difficulty/decrease_health_boost

execute if score @e[type=minecraft:marker,tag=master,limit=1] difficulty_level matches 3.. run gamerule playersSleepingPercentage 201

function roguecraft:increase_difficulty_2 with storage minecraft:master