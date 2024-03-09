execute if data storage minecraft:master {stronghold:0b} run tellraw @s[tag=!hub] {"translate":"roguecraft.chat_messages.stronghold_location_error","color":"dark_purple"}

$execute if data storage minecraft:master {stronghold:1b} run tellraw @s[tag=!hub] ["",{"translate":"roguecraft.chat_messages.stronghold_location","color":"dark_purple"}," ",{"text":"$(X) $(Z)","bold":true,"color":"light_purple"}]

scoreboard players set @s stronghold_location 0
scoreboard players enable @a stronghold_location