scoreboard players set @s drop_card 0
data modify block 8 5 8 Items[0] set from entity @e[type=item,sort=nearest,limit=1,tag=!item] Item
execute if entity @s[tag=pick_wild] run loot give @s mine 8 5 8 diamond_pickaxe{drop_contents:true}
execute unless score @s turn matches 1 run loot give @s mine 8 5 8 diamond_pickaxe{drop_contents:true}
execute if score @s turn matches 1 if entity @s[tag=in_game,tag=!pick_wild] run function uno:pick_card
kill @e[type=item,sort=nearest,limit=1,tag=!item]