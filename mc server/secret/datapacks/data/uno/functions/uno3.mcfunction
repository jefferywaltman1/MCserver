tellraw @a ["",{"selector":"@s","italic":true,"color":"yellow"},{"text":" > UNO!","italic":true,"color":"yellow"}]
execute unless entity @s[tag=uno_boy] run function uno:uno4
tag @a remove uno_boy