team leave @a
team join pink @a[tag=in_game,scores={turn=1}]

title @a[tag=in_game,scores={turn=1}] times 10 60 10
title @a[tag=in_game,scores={turn=1}] title {"text":"YOUR TURN!","color":"light_purple"}
execute as @a[tag=in_game,scores={turn=1}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2

#tellraw @a[tag=in_game] [{"selector":"@a[tag=in_game,scores={turn=1}]","color":"yellow"},{"text":"\'s turn to play!","color":"yellow"}]