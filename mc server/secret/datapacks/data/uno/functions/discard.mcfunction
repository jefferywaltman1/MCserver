scoreboard players set discard turn 1
data modify block 8 4 8 Items[0].tag.Discard prepend from block 8 5 8 Items[0].tag.Card
execute store result score @s card run clear @s shulker_box{is_card:1} 0
execute if score @s card matches 1 run function uno:uno
execute if score @s card matches 0 run function uno:win

execute if entity @s[tag=in_game] unless score type1 card matches 2 unless score type1 card matches 4..5 run function uno:new_turn
execute if entity @s[tag=in_game] if score type1 card matches 1 run tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":" skipped ","color":"red"},{"selector":"@a[tag=in_game,scores={turn=1}]","color":"yellow"},{"text":"!","color":"red"}]
execute if entity @s[tag=in_game] if score type1 card matches 1 as @a[tag=in_game,scores={turn=1}] run function uno:new_turn
execute if entity @s[tag=in_game] if score type1 card matches 2 run function uno:reverse
execute if entity @s[tag=in_game] if score type1 card matches 3 run tellraw @a [{"selector":"@s","color":"yellow"},{"text":" gave ","color":"red"},{"selector":"@a[scores={turn=1}]","color":"yellow"},{"text":" 2 card!","color":"red"}]
execute if entity @s[tag=in_game] if score type1 card matches 3 as @a[tag=in_game,scores={turn=1}] run function uno:draw_two
execute if entity @s[tag=in_game] if score type1 card matches 4..5 run function uno:wild