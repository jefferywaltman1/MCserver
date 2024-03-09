scoreboard objectives add math_input1 dummy
scoreboard objectives add math_input2 dummy
scoreboard objectives add math_output dummy
scoreboard objectives add cycles dummy
scoreboard objectives add card dummy
scoreboard objectives add turn dummy
scoreboard objectives add turn_t dummy
scoreboard objectives add uuid dummy
scoreboard objectives add wild trigger
scoreboard objectives add help trigger
scoreboard objectives add uno trigger
scoreboard objectives add rejoin minecraft.custom:minecraft.leave_game
scoreboard objectives add drop_card minecraft.dropped:minecraft.shulker_box
scoreboard objectives add disp dummy [{"text":"▮","color":"red"},{"text":"▮","color":"green"},{"text":" UNO ","color":"gold"},{"text":"▮","color":"yellow"},{"text":"▮","color":"blue"}]

team add pink
team modify pink color light_purple

bossbar add card {"text":"card"}
bossbar set card max 1
bossbar set card value 1

kill @e[tag=card_holder]
summon minecraft:armor_stand 8 12 8 {Tags:["card_holder"],ArmorItems:[{},{},{},{id:"minecraft:shulker_box",Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b} 
function uno:display