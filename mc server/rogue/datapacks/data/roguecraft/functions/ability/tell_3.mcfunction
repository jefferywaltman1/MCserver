$execute store result storage minecraft:master temp_score_level int 1 run scoreboard players get @s ability_$(name)
$data merge storage minecraft:master {temp_name:"$(name)"}

execute as @e[type=marker,tag=id] run data modify storage minecraft:master temp_id set from entity @s data.id

function roguecraft:ability/tell_4 with storage minecraft:master