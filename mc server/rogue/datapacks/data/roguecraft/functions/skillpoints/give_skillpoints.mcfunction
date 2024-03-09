scoreboard players operation @s skillpoints += @s skillpoint_cache
tellraw @s ["",{"translate":"roguecraft.chat_messages.sp_1","bold":true,"italic":true,"color":"aqua"}," ",{"score":{"name":"@s","objective":"skillpoint_cache"},"bold":true,"italic":true,"color":"aqua"},{"translate":"roguecraft.chat_messages.sp_2","bold":true,"italic":true,"color":"aqua"}," ",{"score":{"name":"@s","objective":"skillpoints"},"bold":true,"italic":true,"color":"aqua"},{"translate":"roguecraft.chat_messages.sp_3","bold":true,"italic":true,"color":"aqua"}]
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.25

scoreboard players set @s skillpoint_cache 0

advancement grant @s only roguecraft:roguecraft/skillpoint_1