title @a title [{"selector":"@s","color":"yellow"},{"text":" WINS","color":"yellow"}]
clear @a shulker_box{is_card:1}
bossbar set card visible false
scoreboard players reset * disp
scoreboard objectives setdisplay sidebar
data modify block 8 4 8 Items[0].tag.Discard[0].CustomModelData set value 1
tag @a remove in_game
tag @a remove dropper
scoreboard players set @a drop_card 0

tellraw @a [{"selector":"@s","color":"yellow"},{"text":" WON THE GAME!","color":"yellow"}]
kill @e[type=item]