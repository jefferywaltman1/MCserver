#unbind
$execute if score @s class matches $(id) run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 0.6
$execute if score @s class matches $(id) run tellraw @s [{"translate":"roguecraft.chat_messages.class_deselect","italic":true,"color":"red"},{"text":" "},{"translate":"roguecraft.class.name.$(upgrade)","italic":true,"color":"red"},{"text":" "},{"translate":"roguecraft.chat_messages.class","italic":true,"color":"red"}]
$execute if score @s class matches $(id) run summon minecraft:marker 0 100 0 {Tags:["unbind"]}
$execute if score @s class matches $(id) run scoreboard players set @s class -1

#bind
$execute unless score @s class matches $(id) unless entity @e[tag=unbind] run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 1.25
$execute unless score @s class matches $(id) unless entity @e[tag=unbind] run tellraw @s [{"translate":"roguecraft.chat_messages.class_select_1","italic":true,"color":"green"},{"text":" "},{"translate":"roguecraft.class.name.$(upgrade)","italic":true,"color":"green"},{"text":" "},{"translate":"roguecraft.chat_messages.class_select_2","italic":true,"color":"green"}]

#set scoreboard
$execute unless entity @e[tag=unbind] run scoreboard players set @s class $(id)

execute unless score @s class matches 1 run clear @s minecraft:warped_fungus_on_a_stick{CustomModelData:5}

kill @e[tag=unbind]