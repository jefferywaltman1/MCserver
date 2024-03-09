scoreboard players reset @s start_run

tellraw @s[tag=tutorial_done,tag=!ready] {"translate":"roguecraft.chat_messages.ready","bold":true,"italic":true,"color":"green"}
tellraw @s[tag=tutorial_done,tag=ready] {"translate":"roguecraft.chat_messages.ready_error","bold":true,"italic":true,"color":"dark_red"}
execute at @s[tag=tutorial_done,tag=!ready] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute at @s[tag=tutorial_done,tag=ready] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
kill @e[type=interaction,distance=..0.5]
tag @s[tag=tutorial_done] add ready
team join ready @s[tag=tutorial_done]
tellraw @s[tag=!tutorial_done] {"translate":"roguecraft.chat_messages.ready_tutorial","bold":true,"italic":true,"color":"dark_red"}
execute at @s[tag=!tutorial_done] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5