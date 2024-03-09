$execute if score @s $(upgrade) matches $(max) run tellraw @s {"translate":"roguecraft.chat_messages.upgrade_error_max","italic":true,"color":"red"}
$execute if score @s $(upgrade) matches $(max) at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s $(upgrade) matches $(max) unless score @s skillpoints matches $(cost).. run tellraw @s {"translate":"roguecraft.chat_messages.upgrade_error_too_expensive","italic":true,"color":"red"}
$execute unless score @s $(upgrade) matches $(max) unless score @s skillpoints matches $(cost).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5


$execute unless score @s $(upgrade) matches $(max) if score @s skillpoints matches $(cost).. run function roguecraft:shops/upgrade/buying with entity @e[type=marker,sort=nearest,limit=1] data