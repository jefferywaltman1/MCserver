scoreboard players set @s rejoin 0
execute if score @s uuid = game uuid run function uno:rejoin1
execute unless score @s uuid = game uuid run function uno:disconnect