scoreboard players set max turn 0
function uno:get_max
scoreboard players add max turn 1
scoreboard players operation @s[scores={turn=1}] turn = max turn
scoreboard players remove @a[tag=in_game] turn 1

execute store result score @s card run clear @s shulker_box{is_card:1} 0
execute if score @s card matches 0 run function uno:win

execute unless entity @a[tag=in_game,scores={turn=1}] run function uno:new_turn