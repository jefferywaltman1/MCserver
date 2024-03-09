$scoreboard players add @s $(upgrade) $(increase)
$tellraw @s [{"translate":"roguecraft.chat_messages.upgrade_buy","italic":true,"color":"green"},{"text":" "},{"translate":"roguecraft.upgrade.name.$(upgrade)","italic":true,"color":"green"},{"text":" (","italic":true,"color":"green"},{"score":{"name":"@s","objective":"$(upgrade)"},"italic":true,"color":"green"},{"text":"/$(max))","italic":true,"color":"green"}] 
execute at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1.5

$scoreboard players add @s[scores={$(upgrade)=$(max)}] shops_completed 1

$scoreboard players remove @s[scores={$(upgrade)=1}] skillpoints $(cost0)
$scoreboard players remove @s[scores={$(upgrade)=2}] skillpoints $(cost1)
$scoreboard players remove @s[scores={$(upgrade)=3}] skillpoints $(cost2)
$scoreboard players remove @s[scores={$(upgrade)=4}] skillpoints $(cost3)
$scoreboard players remove @s[scores={$(upgrade)=5}] skillpoints $(cost4)
$scoreboard players remove @s[scores={$(upgrade)=6}] skillpoints $(cost5)