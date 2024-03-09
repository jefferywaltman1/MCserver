effect clear @s
tp @s 0.00 100 0.00
gamemode adventure @s
effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:speed infinite 9 true
effect give @s minecraft:saturation infinite 0 true
tag @s add hub
team join not_ready @s

execute as @e[tag=id,type=marker] run function roguecraft:set_mana_bar with entity @s data

clear @s
xp set @s 0 levels
scoreboard players set @s level_current 0
scoreboard players set @s level_max 0

scoreboard players set @s dirt_timer 0
scoreboard players set @s liquid_timer 0
scoreboard players set @s lava_timer 0

execute as @e[tag=id,type=marker] run function roguecraft:ability/dirt_walker/disable_bossbar with entity @s data
execute as @e[tag=id,type=marker] run function roguecraft:ability/liquid_walker/disable_bossbar with entity @s data
execute as @e[tag=id,type=marker] run function roguecraft:ability/lava_walker/disable_bossbar with entity @s data