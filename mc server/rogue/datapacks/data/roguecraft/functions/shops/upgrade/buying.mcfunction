$scoreboard players add @s $(upgrade) $(increase)
$tellraw @s [{"translate":"roguecraft.chat_messages.upgrade_buy","italic":true,"color":"green"},{"text":" "},{"translate":"roguecraft.upgrade.name.$(upgrade)","italic":true,"color":"green"},{"text":" (","italic":true,"color":"green"},{"score":{"name":"@s","objective":"$(upgrade)"},"italic":true,"color":"green"},{"text":"/$(max))","italic":true,"color":"green"}] 

$scoreboard players add @s[scores={$(upgrade)=$(max)}] shops_completed 1

$scoreboard players remove @s skillpoints $(cost)
execute at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1.5