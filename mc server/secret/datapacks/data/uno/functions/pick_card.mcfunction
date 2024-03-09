function uno:uno1
execute store result score number3 card run data get block 8 4 8 Items[0].tag.Discard[0].number
execute store result score color3 card run data get block 8 4 8 Items[0].tag.Discard[0].color
execute store result score type3 card run data get block 8 4 8 Items[0].tag.Discard[0].type
execute store result score number1 card run data get block 8 5 8 Items[0].tag.Card.number
execute store result score color1 card run data get block 8 5 8 Items[0].tag.Card.color
execute store result score type1 card run data get block 8 5 8 Items[0].tag.Card.type

scoreboard players set discard turn 0
execute if entity @s[tag=in_game] if score discard turn matches 0 if score type1 card matches 0 if score type3 card matches 0 if score number1 card = number3 card run function uno:discard
execute if entity @s[tag=in_game] if score discard turn matches 0 if score color1 card = color3 card run function uno:discard
execute if entity @s[tag=in_game] if score discard turn matches 0 if score type1 card = type3 card unless score type1 card matches 0 unless score type3 card matches 0 run function uno:discard
execute if entity @s[tag=in_game] if score discard turn matches 0 if score type1 card matches 4..5 run function uno:discard
execute if entity @s[tag=in_game] if score discard turn matches 0 if score type3 card matches 4..5 if score color3 card matches 0 run function uno:discard

execute if entity @s[tag=in_game] if score discard turn matches 0 run loot give @s mine 8 5 8 diamond_pickaxe{drop_contents:true}
execute if entity @s[tag=in_game] if score discard turn matches 0 run tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":" skipped their turn.","color":"red"}]
execute if entity @s[tag=in_game] if score discard turn matches 0 run function uno:draw_card
execute if entity @s[tag=in_game] if score discard turn matches 0 run function uno:new_turn

execute if entity @s[tag=in_game] unless score type1 card matches 4..5 run function uno:new_player

execute at @s run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 10 1