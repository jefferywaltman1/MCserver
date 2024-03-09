$scoreboard players add @s $(upgrade) $(increase)
$tellraw @s [{"translate":"roguecraft.chat_messages.upgrade_buy","italic":true,"color":"green"},{"text":" "},{"translate":"roguecraft.ability.name.$(upgrade)","italic":true,"color":"green"},{"text":" (","italic":true,"color":"green"},{"score":{"name":"@s","objective":"$(upgrade)"},"italic":true,"color":"green"},{"text":"/3)","italic":true,"color":"green"}] 
execute at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1.5

$scoreboard players add @s[scores={$(upgrade)=3}] shops_completed 1

$scoreboard players remove @s[scores={$(upgrade)=1}] skillpoints $(cost0)
$scoreboard players remove @s[scores={$(upgrade)=2}] skillpoints $(cost1)
$scoreboard players remove @s[scores={$(upgrade)=3}] skillpoints $(cost2)