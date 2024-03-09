scoreboard players add @a[tag=in_game,scores={turn=1..}] turn 1
scoreboard players set @a[tag=in_game,scores={turn=0},limit=1,sort=random] turn 1
execute if entity @a[tag=in_game,scores={turn=0}] run function uno:join_players