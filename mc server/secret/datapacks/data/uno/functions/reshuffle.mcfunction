replaceitem block 8 5 8 container.0 diamond{Deck:[{type:0,number:-1}],Discard:[{type:0,number:-1}]}
data modify block 8 5 8 Items[0].tag.Discard[0] set from block 8 4 8 Items[0].tag.Discard[0]
data modify block 8 5 8 Items[0].tag.Deck set from block 8 4 8 Items[0].tag.Discard
data modify block 8 5 8 Items[0].tag.Deck append from block 8 4 8 Items[0].tag.Deck[]
data remove block 8 5 8 Items[0].tag.Deck[0]
replaceitem block 8 4 8 container.0 diamond{Deck:[{type:0,number:-1}],Discard:[{type:0,number:-1}]}
data modify block 8 4 8 Items[0].tag.Deck set from block 8 5 8 Items[0].tag.Deck
data modify block 8 4 8 Items[0].tag.Discard set from block 8 5 8 Items[0].tag.Discard

scoreboard players set global1 cycles 50
function uno:shuffle/start

tellraw @a [{"text":"Discard pile was shuffled into the deck","color":"green"}]