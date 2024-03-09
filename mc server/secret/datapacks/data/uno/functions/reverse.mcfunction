tellraw @a [{"selector":"@s","color":"yellow"},{"text":" used reverse card!","color":"gold","bold":true}]
scoreboard players set max turn 0
function uno:get_max
scoreboard players set min turn 1
function uno:reverse1
execute as @a[tag=in_game] run scoreboard players operation @s turn = @s turn_t