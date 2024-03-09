tp @a 0.00 100 0.00
playsound minecraft:entity.wither.spawn master @a 0.00 100 0.00 0.2 0.75
gamemode adventure @a
effect give @a minecraft:resistance infinite 4 true
effect give @a minecraft:speed infinite 9 true
effect give @a minecraft:saturation infinite 0 true
tag @a add hub
team join not_ready @a

execute as @e[tag=id,type=marker] run function roguecraft:set_mana_bar with entity @s data

title @a title {"translate":"roguecraft.title.defeat","bold":true,"color":"dark_red"}

clear @a
xp set @a 0 levels
scoreboard players set @a level_current 0
scoreboard players set @a level_max 0

scoreboard players set @a dirt_timer 0
scoreboard players set @a liquid_timer 0
scoreboard players set @a lava_timer 0

data merge storage minecraft:master {run_active:0}

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

bossbar set minecraft:difficulty players @s[tag=how_tf_did_this_video_get_over_200k_views_sdigfhwshje]