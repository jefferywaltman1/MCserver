$execute if score @s $(upgrade) matches $(max) run tellraw @s {"translate":"roguecraft.chat_messages.upgrade_error_max","italic":true,"color":"red"}
$execute if score @s $(upgrade) matches $(max) at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5

$execute unless score @s[scores={$(upgrade)=5}] $(upgrade) matches $(max) unless score @s skillpoints matches $(cost5).. run tellraw @s {"translate":"roguecraft.chat_messages.upgrade_error_too_expensive","italic":true,"color":"red"}
$execute unless score @s[scores={$(upgrade)=5}] $(upgrade) matches $(max) unless score @s skillpoints matches $(cost5).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s[scores={$(upgrade)=5}] $(upgrade) matches $(max) if score @s skillpoints matches $(cost5).. run function roguecraft:shops/progressive/buying with entity @e[type=marker,sort=nearest,limit=1] data

$execute unless score @s[scores={$(upgrade)=4}] $(upgrade) matches $(max) unless score @s skillpoints matches $(cost4).. run tellraw @s {"translate":"roguecraft.chat_messages.upgrade_error_too_expensive","italic":true,"color":"red"}
$execute unless score @s[scores={$(upgrade)=4}] $(upgrade) matches $(max) unless score @s skillpoints matches $(cost4).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s[scores={$(upgrade)=4}] $(upgrade) matches $(max) if score @s skillpoints matches $(cost4).. run function roguecraft:shops/progressive/buying with entity @e[type=marker,sort=nearest,limit=1] data

$execute unless score @s[scores={$(upgrade)=3}] $(upgrade) matches $(max) unless score @s skillpoints matches $(cost3).. run tellraw @s {"translate":"roguecraft.chat_messages.upgrade_error_too_expensive","italic":true,"color":"red"}
$execute unless score @s[scores={$(upgrade)=3}] $(upgrade) matches $(max) unless score @s skillpoints matches $(cost3).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s[scores={$(upgrade)=3}] $(upgrade) matches $(max) if score @s skillpoints matches $(cost3).. run function roguecraft:shops/progressive/buying with entity @e[type=marker,sort=nearest,limit=1] data

$execute unless score @s[scores={$(upgrade)=2}] $(upgrade) matches $(max) unless score @s skillpoints matches $(cost2).. run tellraw @s {"translate":"roguecraft.chat_messages.upgrade_error_too_expensive","italic":true,"color":"red"}
$execute unless score @s[scores={$(upgrade)=2}] $(upgrade) matches $(max) unless score @s skillpoints matches $(cost2).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s[scores={$(upgrade)=2}] $(upgrade) matches $(max) if score @s skillpoints matches $(cost2).. run function roguecraft:shops/progressive/buying with entity @e[type=marker,sort=nearest,limit=1] data

$execute unless score @s[scores={$(upgrade)=1}] $(upgrade) matches $(max) unless score @s skillpoints matches $(cost1).. run tellraw @s {"translate":"roguecraft.chat_messages.upgrade_error_too_expensive","italic":true,"color":"red"}
$execute unless score @s[scores={$(upgrade)=1}] $(upgrade) matches $(max) unless score @s skillpoints matches $(cost1).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s[scores={$(upgrade)=1}] $(upgrade) matches $(max) if score @s skillpoints matches $(cost1).. run function roguecraft:shops/progressive/buying with entity @e[type=marker,sort=nearest,limit=1] data

$execute unless score @s[scores={$(upgrade)=0}] $(upgrade) matches $(max) unless score @s skillpoints matches $(cost0).. run tellraw @s {"translate":"roguecraft.chat_messages.upgrade_error_too_expensive","italic":true,"color":"red"}
$execute unless score @s[scores={$(upgrade)=0}] $(upgrade) matches $(max) unless score @s skillpoints matches $(cost0).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute unless score @s[scores={$(upgrade)=0}] $(upgrade) matches $(max) if score @s skillpoints matches $(cost0).. run function roguecraft:shops/progressive/buying with entity @e[type=marker,sort=nearest,limit=1] data