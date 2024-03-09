execute as @a[scores={rejoin=1..}] run function uno:rejoin
execute as @a[scores={drop_card=1..},tag=!dropper] at @s run function uno:drop_card
scoreboard players set @a drop_card 0
execute as @a[scores={wild=1..},tag=pick_wild,tag=in_game] run function uno:wild_pick
scoreboard players set @a wild 0
scoreboard players enable @a help
execute as @a[scores={help=1..}] run function uno:help
effect give @a weakness 10 10 true
execute as @a[scores={uno=1..},tag=in_game] run function uno:uno2
scoreboard players set @a uno 0
gamemode adventure @a[gamemode=survival]

execute as @a[tag=in_game] run scoreboard players operation @s disp = @s turn
#execute as @e[tag=card_holder] at @s run tp @s ~ ~ ~ ~4 ~