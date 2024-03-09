execute if data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}} unless data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1}}} run tag @s add bind


$execute if score @s[tag=!bind] $(upgrade) matches 3 run tellraw @s {"translate":"roguecraft.chat_messages.ability_error_max","italic":true,"color":"red"}
$execute if score @s[tag=!bind] $(upgrade) matches 3 at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5

$execute as @s[tag=!bind,scores={$(upgrade)=2}] unless score @s skillpoints matches $(cost2).. run tellraw @s {"translate":"roguecraft.chat_messages.ability_error_too_expensive","italic":true,"color":"red"}
$execute as @s[tag=!bind,scores={$(upgrade)=2}] unless score @s skillpoints matches $(cost2).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute as @s[tag=!bind,scores={$(upgrade)=2}] if score @s skillpoints matches $(cost2).. run function roguecraft:shops/ability/buying with entity @e[type=marker,sort=nearest,limit=1] data

$execute as @s[tag=!bind,scores={$(upgrade)=1}] unless score @s skillpoints matches $(cost1).. run tellraw @s {"translate":"roguecraft.chat_messages.ability_error_too_expensive","italic":true,"color":"red"}
$execute as @s[tag=!bind,scores={$(upgrade)=1}] unless score @s skillpoints matches $(cost1).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute as @s[tag=!bind,scores={$(upgrade)=1}] if score @s skillpoints matches $(cost1).. run function roguecraft:shops/ability/buying with entity @e[type=marker,sort=nearest,limit=1] data

$execute as @s[tag=!bind,scores={$(upgrade)=0}] unless score @s skillpoints matches $(cost0).. run tellraw @s {"translate":"roguecraft.chat_messages.ability_error_too_expensive","italic":true,"color":"red"}
$execute as @s[tag=!bind,scores={$(upgrade)=0}] unless score @s skillpoints matches $(cost0).. at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
$execute as @s[tag=!bind,scores={$(upgrade)=0}] if score @s skillpoints matches $(cost0).. run function roguecraft:shops/ability/buying with entity @e[type=marker,sort=nearest,limit=1] data

execute as @s[tag=bind] run function roguecraft:shops/ability/bind with entity @e[type=marker,sort=nearest,limit=1] data
tag @s remove bind