$bossbar set minecraft:difficulty name ["",{"translate":"roguecraft.bossbar.difficulty_level"},{"text":": $(difficulty)"}]
bossbar set minecraft:difficulty value 0

execute as @a at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 0.1 0.75
$tellraw @a ["",{"translate":"roguecraft.chat_messages.difficulty_increase","bold":true,"color":"red"},{"text":" $(difficulty)","bold":true,"color":"red"}]