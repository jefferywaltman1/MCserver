tellraw @a ["",{"selector":"@a[tag=uno_boy]","color":"yellow"},{"text":" had to draw 2 cards","color":"yellow"}]
execute as @e[tag=uno_boy] run function uno:draw_card
execute as @e[tag=uno_boy] run function uno:draw_card