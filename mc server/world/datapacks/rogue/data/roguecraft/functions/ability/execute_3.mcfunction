$execute store result storage minecraft:master temp_score_level int 1 run scoreboard players get @s ability_$(name)
$data merge storage minecraft:master {temp_name:"$(name)"}

function roguecraft:ability/check_mana with storage minecraft:master