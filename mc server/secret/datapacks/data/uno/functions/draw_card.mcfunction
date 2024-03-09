execute store result score deck card run data get block 8 4 8 Items[0].tag.Deck
execute if score deck card matches ..1 run function uno:reshuffle

data remove block 8 5 8 Items
replaceitem block 8 5 8 container.0 shulker_box{is_card:1,display:{Name:'{"text":"HI"}',color:0},Card:{},CustomModelData:0}
data modify block 8 5 8 Items[0].tag.Card set from block 8 4 8 Items[0].tag.Deck[0]
data modify block 8 5 8 Items[0].tag.CustomModelData set from block 8 4 8 Items[0].tag.Deck[0].CustomModelData
execute store result score number card run data get block 8 4 8 Items[0].tag.Deck[0].number
execute store result score color card run data get block 8 4 8 Items[0].tag.Deck[0].color
execute store result score type card run data get block 8 4 8 Items[0].tag.Deck[0].type
### if its a number
execute if score type card matches 0 if score color card matches 1 run data modify block 8 6 8 Text1 set value '["",{"text":"Red: ","color":"red"},{"score":{"name":"number","objective":"card"},"color":"light_purple"}]'
execute if score type card matches 0 if score color card matches 2 run data modify block 8 6 8 Text1 set value '["",{"text":"Green: ","color":"green"},{"score":{"name":"number","objective":"card"},"color":"light_purple"}]'
execute if score type card matches 0 if score color card matches 3 run data modify block 8 6 8 Text1 set value '["",{"text":"Blue: ","color":"blue"},{"score":{"name":"number","objective":"card"},"color":"light_purple"}]'
execute if score type card matches 0 if score color card matches 4 run data modify block 8 6 8 Text1 set value '["",{"text":"Yellow: ","color":"yellow"},{"score":{"name":"number","objective":"card"},"color":"light_purple"}]'
### skip card
execute if score type card matches 1 if score color card matches 1 run data modify block 8 6 8 Text1 set value '["",{"text":"Red: ","color":"red"},{"text":"Skip","color":"light_purple"}]'
execute if score type card matches 1 if score color card matches 2 run data modify block 8 6 8 Text1 set value '["",{"text":"Green: ","color":"green"},{"text":"Skip","color":"light_purple"}]'
execute if score type card matches 1 if score color card matches 3 run data modify block 8 6 8 Text1 set value '["",{"text":"Blue: ","color":"blue"},{"text":"Skip","color":"light_purple"}]'
execute if score type card matches 1 if score color card matches 4 run data modify block 8 6 8 Text1 set value '["",{"text":"Yellow: ","color":"yellow"},{"text":"Skip","color":"light_purple"}]'
### reverse card
execute if score type card matches 2 if score color card matches 1 run data modify block 8 6 8 Text1 set value '["",{"text":"Red: ","color":"red"},{"text":"Reverse","color":"light_purple"}]'
execute if score type card matches 2 if score color card matches 2 run data modify block 8 6 8 Text1 set value '["",{"text":"Green: ","color":"green"},{"text":"Reverse","color":"light_purple"}]'
execute if score type card matches 2 if score color card matches 3 run data modify block 8 6 8 Text1 set value '["",{"text":"Blue: ","color":"blue"},{"text":"Reverse","color":"light_purple"}]'
execute if score type card matches 2 if score color card matches 4 run data modify block 8 6 8 Text1 set value '["",{"text":"Yellow: ","color":"yellow"},{"text":"Reverse","color":"light_purple"}]'
### draw 2
execute if score type card matches 3 if score color card matches 1 run data modify block 8 6 8 Text1 set value '["",{"text":"Red: ","color":"red"},{"text":"Draw 2","color":"light_purple"}]'
execute if score type card matches 3 if score color card matches 2 run data modify block 8 6 8 Text1 set value '["",{"text":"Green: ","color":"green"},{"text":"Draw 2","color":"light_purple"}]'
execute if score type card matches 3 if score color card matches 3 run data modify block 8 6 8 Text1 set value '["",{"text":"Blue: ","color":"blue"},{"text":"Draw 2","color":"light_purple"}]'
execute if score type card matches 3 if score color card matches 4 run data modify block 8 6 8 Text1 set value '["",{"text":"Yellow: ","color":"yellow"},{"text":"Draw 2","color":"light_purple"}]'
### wild 
execute if score type card matches 4 run data modify block 8 6 8 Text1 set value '["",{"text":"N/A: ","color":"dark_purple"},{"text":"WILD","color":"light_purple"}]'
### wild 4
execute if score type card matches 5 run data modify block 8 6 8 Text1 set value '["",{"text":"N/A: ","color":"dark_purple"},{"text":"WILD +4","color":"light_purple"}]'

data modify block 8 5 8 Items[0].tag.display.Name set from block 8 6 8 Text1
loot give @s mine 8 5 8 diamond_pickaxe{drop_contents:true}
data remove block 8 4 8 Items[0].tag.Deck[0]