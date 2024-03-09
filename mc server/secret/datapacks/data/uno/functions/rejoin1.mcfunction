function uno:get_max
scoreboard players operation @s turn = max turn
scoreboard players add @s turn 1

execute if entity @a[tag=in_game] run tellraw @a [{"selector":"@s","color":"yellow"},{"text":" rejoined the game. They were put as the last turn.","color":"green"}]