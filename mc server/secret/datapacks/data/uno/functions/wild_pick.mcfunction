execute if score @s wild matches 1 run data modify block 8 4 8 Items[0].tag.Discard[0].color set value 1
execute if score @s wild matches 1 run tellraw @a [{"selector":"@s","color":"yellow"},{"text":" changed the color to RED.","color":"red"}]
execute if score @s wild matches 2 run data modify block 8 4 8 Items[0].tag.Discard[0].color set value 2
execute if score @s wild matches 2 run tellraw @a [{"selector":"@s","color":"yellow"},{"text":" changed the color to GREEN.","color":"green"}]
execute if score @s wild matches 3 run data modify block 8 4 8 Items[0].tag.Discard[0].color set value 3
execute if score @s wild matches 3 run tellraw @a [{"selector":"@s","color":"yellow"},{"text":" changed the color to BLUE.","color":"blue"}]
execute if score @s wild matches 4 run data modify block 8 4 8 Items[0].tag.Discard[0].color set value 4
execute if score @s wild matches 4 run tellraw @a [{"selector":"@s","color":"yellow"},{"text":" changed the color to YELLOW.","color":"yellow"}]
tag @s remove pick_wild
function uno:new_turn
execute if score type1 card matches 5 run tellraw @a [{"selector":"@s","color":"yellow"},{"text":" gave ","color":"red"},{"selector":"@a[tag=in_game,scores={turn=1}]","color":"yellow"},{"text":" 4 card!","color":"red"}]
execute if score type1 card matches 5 as @a[tag=in_game,scores={turn=1}] run function uno:wild_4
function uno:new_player