tp @a 0.00 100 0.00 0.00 0.00
playsound minecraft:entity.enderman.teleport master @a 0.00 100 0.00 0.5 1.25
particle minecraft:reverse_portal 0.00 100 0.0 0 0 0 10 300 force
execute positioned 0.0 100.0 0.0 run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1

effect clear @a

effect give @a minecraft:resistance infinite 4 true
effect give @a minecraft:speed infinite 9 true
effect give @a minecraft:saturation infinite 0 true
execute as @a run attribute @s minecraft:generic.max_health base set 20
tag @a add hub
team join not_ready @a

execute as @e[tag=id,type=marker] run function roguecraft:set_mana_bar with entity @s data

title @a title {"translate":"roguecraft.title.victory","bold":true,"color":"green"}

xp set @a 0 levels
scoreboard players set @a level_current 0
scoreboard players set @a level_max 0

scoreboard players set @a dirt_timer 0
scoreboard players set @a liquid_timer 0
scoreboard players set @a lava_timer 0

schedule clear custom_ender_dragon:p2/attack_timer
schedule clear custom_ender_dragon:p3/attack_timer
schedule clear custom_ender_dragon:two_second_tick
schedule clear custom_ender_dragon:quarter_second_tick
schedule clear custom_ender_dragon:p5/attack_timer_10s
schedule clear custom_ender_dragon:p5/attack_timer_15s
schedule clear custom_ender_dragon:p5/attack_timer_5s
bossbar set minecraft:dragon players @a[tag=olkjahsoihaef]
bossbar set minecraft:phase_4_mobs players @a[tag=olkjahsoihaef]

execute as @e[tag=id,type=marker] run function roguecraft:ability/dirt_walker/disable_bossbar with entity @s data
execute as @e[tag=id,type=marker] run function roguecraft:ability/liquid_walker/disable_bossbar with entity @s data
execute as @e[tag=id,type=marker] run function roguecraft:ability/lava_walker/disable_bossbar with entity @s data
data merge storage minecraft:master {run_active:0}

bossbar set minecraft:difficulty players @s[tag=tjrrtjrtaesf]

tag @a remove victory

scoreboard players add @a skillpoints 40
tellraw @s ["",{"translate":"roguecraft.chat_messages.sp_1","bold":true,"italic":true,"color":"aqua"}," ",{"text":"40","bold":true,"italic":true,"color":"aqua"},{"translate":"roguecraft.chat_messages.sp_ender_dragon","bold":true,"italic":true,"color":"aqua"}," ",{"score":{"name":"@s","objective":"skillpoints"},"bold":true,"italic":true,"color":"aqua"},{"translate":"roguecraft.chat_messages.sp_3","bold":true,"italic":true,"color":"aqua"}]