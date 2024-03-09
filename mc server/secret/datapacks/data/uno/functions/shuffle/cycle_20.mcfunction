data modify block 8 4 8 Items[0].tag.Deck append from block 8 4 8 Items[0].tag.Deck[19]
data remove block 8 4 8 Items[0].tag.Deck[19]
scoreboard players remove global cycles 1
execute if score global cycles matches 1.. run function uno:shuffle/cycle_20