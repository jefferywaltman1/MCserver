scoreboard players enable @a[tag=in_game] uno
tag @s add uno_boy
tellraw @a[tag=in_game] ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" is on their last card. Click to stop them!","bold":true,"color":"gold"},{"text":"\n\n         "},{"text":"[ UNO ]\n","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger uno set 1"}}]