### loop
execute as @a[tag=in_game] if score @s turn = min turn run scoreboard players operation @s turn_t = max turn
execute as @a[tag=in_game] if score @s turn = max turn run scoreboard players operation @s turn_t = min turn
scoreboard players remove max turn 1
scoreboard players add min turn 1

execute if score max turn <= min turn as @a[tag=in_game] if score @s turn = min turn run scoreboard players operation @s turn_t = max turn
execute unless score max turn <= min turn run function uno:reverse1