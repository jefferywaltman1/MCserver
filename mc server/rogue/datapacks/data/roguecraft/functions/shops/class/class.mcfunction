$execute if score @s class_$(upgrade) matches 1 run function roguecraft:shops/class/bind with entity @e[type=marker,sort=nearest,limit=1] data
$execute unless score @s class_$(upgrade) matches 1 unless score @s skillpoints matches $(cost).. run tellraw @s {"translate":"roguecraft.chat_messages.class_error_too_expensive","italic":true,"color":"red"}
$execute unless score @s class_$(upgrade) matches 1 unless score @s skillpoints matches $(cost).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5

$execute unless score @s class_$(upgrade) matches 1 if score @s skillpoints matches $(cost).. run function roguecraft:shops/class/buying with entity @e[type=marker,sort=nearest,limit=1] data