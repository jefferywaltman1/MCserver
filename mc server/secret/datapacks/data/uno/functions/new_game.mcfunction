function uno:end
tag @a add in_game
scoreboard players add game uuid 1
scoreboard players operation @a[tag=in_game] uuid = game uuid

clear @a shulker_box{is_card:1}
scoreboard objectives setdisplay sidebar disp
function uno:new_deck
scoreboard players set global1 cycles 50
function uno:shuffle/start
bossbar set card visible true
bossbar set card players @a
data modify block 8 4 8 Items[0].tag.Discard[0] set from block 8 4 8 Items[0].tag.Deck[0]
data remove block 8 4 8 Items[0].tag.Deck[0]

scoreboard players reset * turn
scoreboard players set @a[tag=in_game] turn 0
function uno:join_players

execute as @a[scores={turn=1..},tag=in_game] run function uno:deal
function uno:new_player

tellraw @a {"text":"[ Click here for HELP ]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger help set 1"}}
tellraw @a {"text":"Please do not rapidly drop cards!","bold":true,"color":"aqua"}
function uno:display