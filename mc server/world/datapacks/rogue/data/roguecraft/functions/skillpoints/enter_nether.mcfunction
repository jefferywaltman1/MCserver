scoreboard players add @s skillpoints 3
scoreboard players set @s enter_nether 1

execute if score @s entry_x matches 40000000 store result score @s entry_x run data get entity @s Pos[0]
execute if score @s entry_z matches 40000000 store result score @s entry_z run data get entity @s Pos[2]

tellraw @s ["",{"translate":"roguecraft.chat_messages.sp_1","bold":true,"italic":true,"color":"aqua"}," ",{"text":"3","bold":true,"italic":true,"color":"aqua"},{"translate":"roguecraft.chat_messages.sp_advancement","bold":true,"italic":true,"color":"aqua"}," ",{"score":{"name":"@s","objective":"skillpoints"},"bold":true,"italic":true,"color":"aqua"},{"translate":"roguecraft.chat_messages.sp_3","bold":true,"italic":true,"color":"aqua"}]
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.25