#advancements
execute as @a store result score @s temp_health run data get entity @s Health
execute as @a[advancements={roguecraft:roguecraft/max_health=false},nbt={AbsorptionAmount:16.0f,Health:52.0f}] run advancement grant @s only roguecraft:roguecraft/max_health
execute as @a[advancements={roguecraft:roguecraft/all_dummy=false},scores={dummy_upgrade=100}] run advancement grant @s only roguecraft:roguecraft/all_dummy
execute as @a[advancements={roguecraft:roguecraft/skillpoint_100=false},scores={skillpoints=100..}] run advancement grant @s only roguecraft:roguecraft/skillpoint_100
execute as @a[advancements={roguecraft:roguecraft/avatar=false},scores={dirt_timer=1..,liquid_timer=1..}] if data entity @s {active_effects:[{id:"minecraft:levitation"}]} run advancement grant @s only roguecraft:roguecraft/avatar
execute if score @e[type=marker,tag=master,limit=1] difficulty_level matches 20.. run advancement grant @a[advancements={roguecraft:roguecraft/difficulty_20=false},gamemode=!spectator] only roguecraft:roguecraft/difficulty_20
execute as @a[advancements={roguecraft:roguecraft/low_health_parry=false},scores={parry_timer=1..,damage=1..,temp_health=0..1}] run advancement grant @s only roguecraft:roguecraft/low_health_parry
execute as @a[advancements={roguecraft:roguecraft/instant_delivery=false},scores={parry_timer=1..,damage=1..}] at @s on attacker if entity @s[type=ghast] run execute as @a[sort=nearest,limit=1] run advancement grant @s only roguecraft:roguecraft/instant_delivery
scoreboard players remove @a adrenaline_advancement_timer 1
execute as @a[advancements={roguecraft:roguecraft/instant_regret=false},scores={deaths=1..,adrenaline_advancement_timer=1..}] run advancement grant @s only roguecraft:roguecraft/instant_regret
advancement grant @a[advancements={roguecraft:roguecraft/completion=false},scores={shops_completed=57}] only roguecraft:roguecraft/completion
execute as @a[advancements={roguecraft:roguecraft/full_defense=false},scores={defense=10,armor=6,resistance=1,protection=4}] run advancement grant @s only roguecraft:roguecraft/full_defense

execute as @a[advancements={roguecraft:roguecraft/all_dummy=true,roguecraft:roguecraft/avatar=true,roguecraft:roguecraft/completion=true,roguecraft:roguecraft/difficulty_20=true,roguecraft:roguecraft/end_portal_destroyed=true,roguecraft:roguecraft/full_defense=true,roguecraft:roguecraft/instant_delivery=true,roguecraft:roguecraft/instant_regret=true,roguecraft:roguecraft/low_health_parry=true,roguecraft:roguecraft/max_health=true,roguecraft:roguecraft/prevent_death=true,roguecraft:roguecraft/root=true,roguecraft:roguecraft/run_complete=true,roguecraft:roguecraft/skillpoint_1=true,roguecraft:roguecraft/skillpoint_100=true,roguecraft:roguecraft/speedrun=true,roguecraft:roguecraft/true_completion=false}] run advancement grant @s only roguecraft:roguecraft/true_completion

#general
execute as @a[gamemode=creative] run scoreboard players operation @s mana = @s max_mana
execute if score @e[tag=master,limit=1] blaze_rods matches 0 if entity @a[advancements={minecraft:nether/obtain_blaze_rod=true}] if data storage minecraft:master {run_active:1} run function roguecraft:blaze_rods with storage minecraft:master Region
execute at @e[tag=stronghold] if score @e[tag=master,limit=1] blaze_rods matches 1 store success storage minecraft:master stronghold byte 1 run place structure minecraft:stronghold ~ ~ ~
execute if entity @e[tag=stronghold] if data storage minecraft:master {stronghold:1b} run kill @e[tag=stronghold]

execute as @a[scores={deaths=1..}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={deaths=1..},nbt={Health:20.0f}] run tp @r[gamemode=survival,limit=1]
gamemode spectator @a[scores={deaths=1..},nbt={Health:20.0f}]
execute unless entity @a[gamemode=!spectator] if entity @a run function roguecraft:game_loop/run_end
scoreboard players set @a[scores={deaths=1..},nbt={Health:20.0f}] deaths 0
execute if entity @e[tag=master,limit=1] as @a[tag=!init_player] run function roguecraft:init_player with storage minecraft:master

#healer class
execute as @a[scores={class=2},tag=!hub,gamemode=!spectator,tag=!victory] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 5.5 5.5 5.5 0.01 4 force @a[scores={class=-1}]
execute as @a[scores={class=2},tag=!hub,gamemode=!spectator,tag=!victory] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 5.5 5.5 5.5 0.01 4 force @a[scores={class=0}]
execute as @a[scores={class=2},tag=!hub,gamemode=!spectator,tag=!victory] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 5.5 5.5 5.5 0.01 4 force @a[scores={class=1}]
execute as @a[scores={class=2},tag=!hub,gamemode=!spectator,tag=!victory] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ 5.5 5.5 5.5 0.01 4 force @a[scores={class=3}]

#award skill pearls
execute as @a store result score @s level_current run xp query @s levels
execute as @a run execute if score @s level_current > @s level_max run function roguecraft:skillpoints/skillpearl
execute as @a[scores={skillpoint_cache=1..}] run function roguecraft:skillpoints/give_skillpoints

execute as @a[gamemode=!spectator,gamemode=!adventure,advancements={story/smelt_iron=true},scores={smelt_iron=0}] run function roguecraft:skillpoints/smelt_iron
execute as @a[gamemode=!spectator,gamemode=!adventure,advancements={story/lava_bucket=true},scores={lava_bucket=0}] run function roguecraft:skillpoints/lava_bucket
execute as @a[gamemode=!spectator,gamemode=!adventure,advancements={story/form_obsidian=true},scores={obsidian=0}] run function roguecraft:skillpoints/obsidian
execute as @a[gamemode=!spectator,gamemode=!adventure,advancements={story/enter_the_nether=true},scores={enter_nether=0}] run function roguecraft:skillpoints/enter_nether
execute as @a[gamemode=!spectator,gamemode=!adventure,advancements={nether/find_fortress=true},scores={find_fortress=0}] run function roguecraft:skillpoints/find_fortress
execute as @a[gamemode=!spectator,gamemode=!adventure,advancements={nether/obtain_blaze_rod=true},scores={obtain_blaze_rod=0}] run function roguecraft:skillpoints/obtain_blaze_rod
execute as @a[gamemode=!spectator,gamemode=!adventure,advancements={story/enter_the_end=true},scores={enter_end=0}] run function roguecraft:skillpoints/enter_end

#give skill points for items
execute as @a run execute store result score @s skillpoint_cache run clear @s minecraft:structure_void

#shops
execute as @e[type=minecraft:interaction,tag=upgrade_shop] at @s on attacker run function roguecraft:shops/upgrade/upgrade with entity @e[type=marker,sort=nearest,limit=1] data
execute as @e[type=minecraft:interaction,tag=upgrade_shop] at @s on target run function roguecraft:shops/upgrade/upgrade with entity @e[type=marker,sort=nearest,limit=1] data
execute as @a at @s run function roguecraft:shops/upgrade/tell_main
execute as @e[type=marker,tag=upgrade_shop,tag=!marked] at @s run function roguecraft:shops/upgrade/create_shop with entity @s data

execute as @e[type=minecraft:interaction,tag=progressive_shop] at @s on attacker run function roguecraft:shops/progressive/progressive with entity @e[type=marker,sort=nearest,limit=1] data
execute as @e[type=minecraft:interaction,tag=progressive_shop] at @s on target run function roguecraft:shops/progressive/progressive with entity @e[type=marker,sort=nearest,limit=1] data
execute as @a at @s run function roguecraft:shops/progressive/tell_main
execute as @e[type=marker,tag=progressive_shop,tag=!marked] at @s run function roguecraft:shops/progressive/create_shop with entity @s data

execute as @e[type=minecraft:interaction,tag=ability_shop] at @s on attacker run function roguecraft:shops/ability/ability with entity @e[type=marker,sort=nearest,limit=1] data
execute as @e[type=minecraft:interaction,tag=ability_shop] at @s on target run function roguecraft:shops/ability/ability with entity @e[type=marker,sort=nearest,limit=1] data
execute as @a at @s run function roguecraft:shops/ability/tell_main
execute as @e[type=marker,tag=ability_shop,tag=!marked] at @s run function roguecraft:shops/ability/create_shop with entity @s data

execute as @e[type=minecraft:interaction,tag=class_shop] at @s on attacker run function roguecraft:shops/class/class with entity @e[type=marker,sort=nearest,limit=1] data
execute as @e[type=minecraft:interaction,tag=class_shop] at @s on target run function roguecraft:shops/class/class with entity @e[type=marker,sort=nearest,limit=1] data
execute as @a at @s run function roguecraft:shops/class/tell_main
execute as @e[type=marker,tag=class_shop,tag=!marked] at @s run function roguecraft:shops/class/create_shop with entity @s data

#hub stuff
execute if data storage minecraft:master {run_active:0} as @e[type=item] if data entity @s {Item:{id:"minecraft:warped_fungus_on_a_stick"}} if data entity @s Item.tag.CustomModelData run kill @s

execute as @a[tag=hub] at @s if block ~ ~ ~ minecraft:blue_stained_glass_pane run function roguecraft:hub_tp
execute as @a[tag=hub] at @s if block ~ ~ ~ minecraft:red_stained_glass_pane run function roguecraft:hub_tp

execute as @a[tag=hub] at @s as @s[z=-7,dz=0] if block ~ ~ ~ minecraft:yellow_stained_glass_pane run function roguecraft:hub_tp_tutorial_in
execute as @a[tag=hub] at @s as @s[z=6,dz=0] if block ~ ~ ~ minecraft:yellow_stained_glass_pane run function roguecraft:hub_tp_tutorial_out

execute as @a[tag=hub] unless data entity @s Inventory[{Slot:8b,id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:1}}] run item replace entity @s hotbar.8 with minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"Start Run","bold":true,"color":"aqua"}'},CustomModelData:1}
execute as @a[tag=hub] unless data entity @s Inventory[{Slot:0b,id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:2}}] run item replace entity @s hotbar.0 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.generic.ability","color":"light_purple"},{"text":" 1","color":"light_purple"}]'},CustomModelData:2}
execute as @a[tag=hub] unless data entity @s Inventory[{Slot:1b,id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:3}}] run item replace entity @s hotbar.1 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.generic.ability","color":"light_purple"},{"text":" 2","color":"light_purple"}]'},CustomModelData:3}
execute as @a[tag=hub] unless data entity @s Inventory[{Slot:2b,id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:4}}] run item replace entity @s hotbar.2 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.generic.ability","color":"light_purple"},{"text":" 3","color":"light_purple"}]'},CustomModelData:4}
execute as @a[tag=hub] if score @s class matches 1 unless data entity @s Inventory[{Slot:3b,id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:5}}] run item replace entity @s hotbar.3 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.generic.ability","color":"light_purple"},{"text":" 4","color":"light_purple"}]'},CustomModelData:5}

#right click detection
execute as @a[scores={right_click=1..}] run function roguecraft:right_click
execute unless entity @a[tag=!ready] if entity @a if data storage minecraft:master {start:0} run function roguecraft:game_loop/run_start_1

#reset interaction entities
execute as @e[type=minecraft:interaction,tag=!ability,tag=!class_ability,tag=!run_start,tag=!egg_interaction] run data remove entity @s interaction
execute as @e[type=minecraft:interaction,tag=!ability,tag=!class_ability,tag=!run_start,tag=!egg_interaction] run data remove entity @s attack

#ability items
execute as @a[tag=hub,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run function roguecraft:set_hub_ability_item

#abilities
scoreboard players remove @a parry_timer 1
scoreboard players remove @a dirt_timer 1
execute if entity @a[scores={dirt_timer=0..}] as @e[tag=id,type=marker] run function roguecraft:ability/dirt_walker/update_bossbar with entity @s data
execute at @a[scores={dirt_timer=0..},gamemode=!spectator] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 dirt replace air
execute at @a[scores={dirt_timer=0..},gamemode=!spectator] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 dirt replace cave_air
scoreboard players remove @a liquid_timer 1
execute if entity @a[scores={liquid_timer=0..}] as @e[tag=id,type=marker] run function roguecraft:ability/liquid_walker/update_bossbar with entity @s data
execute at @a[scores={liquid_timer=0..},gamemode=!spectator] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 frosted_ice replace water
execute at @a[scores={liquid_timer=0..},gamemode=!spectator] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 basalt replace lava
execute as @a[scores={parry_timer=1..,damage=1..,ability_spikes=1}] at @s run function roguecraft:ability/spikes/parry_1
execute as @a[scores={parry_timer=1..,damage=1..,ability_spikes=2}] at @s run function roguecraft:ability/spikes/parry_2
execute as @a[scores={parry_timer=1..,damage=1..,ability_spikes=3}] at @s run function roguecraft:ability/spikes/parry_3
execute as @e[tag=player_fireball] at @s if entity @a[distance=..80] run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.025 5 force

execute as @a[scores={parry_timer=0}] at @s run playsound minecraft:ui.toast.out master @s ~ ~ ~ 2 2

#custom ender dragon
execute if data storage minecraft:master {end:0} if entity @a[nbt={Dimension:"minecraft:the_end"}] in the_end if loaded 0 0 0 run forceload add -100 -100 100 100
execute if data storage minecraft:master {end:0} if entity @a[nbt={Dimension:"minecraft:the_end"}] in the_end if loaded 0 0 0 run tag @e[type=ender_dragon] remove cdragon
execute if data storage minecraft:master {end:0} if entity @a[nbt={Dimension:"minecraft:the_end"}] in the_end if loaded 0 0 0 run schedule function roguecraft:activate_end 5t append
execute if data storage minecraft:master {end:1} run function custom_ender_dragon:tick
execute as @a[nbt={Dimension:"minecraft:the_end"},tag=!end] run function roguecraft:enter_end

#stronghold location
execute as @a[scores={stronghold_location=1..}] run function roguecraft:tell_stronghold with storage minecraft:master Region

#toggle_ability_feedback
execute as @a[scores={toggle_ability_feedback=1}] run function roguecraft:toggle_ability_feedback with storage minecraft:master Region
execute as @a[scores={toggle_ability_feedback=3}] run function roguecraft:toggle_ability_feedback with storage minecraft:master Region
scoreboard players enable @s toggle_ability_feedback

#restart run
execute as @a[tag=!hub,scores={restart_run=1..},gamemode=!spectator] at @s run function roguecraft:restart_run
execute as @a[scores={restart_run=1..},gamemode=spectator] run tellraw @s {"translate":"roguecraft.chat_messages.restart_dead","italic":true,"color":"red"}
execute as @a[scores={restart_run=1..},gamemode=spectator] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
scoreboard players enable @a restart_run
scoreboard players set @a restart_run 0

#final
execute if entity @e[tag=egg_block] positioned 0.5 139.5 0.5 run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute as @a[gamemode=survival,nbt={Dimension:"minecraft:the_end"}] if score @s temp_health matches 1.. if data storage minecraft:master {end:1} unless entity @e[type=minecraft:ender_dragon] in the_end if loaded -100 0 -100 if loaded 100 0 100 run effect give @a minecraft:nausea infinite 0 true
execute as @a[gamemode=survival,nbt={Dimension:"minecraft:the_end"}] if score @s temp_health matches 1.. if data storage minecraft:master {end:1} unless entity @e[type=minecraft:ender_dragon] in the_end if loaded -100 0 -100 if loaded 100 0 100 run effect give @a minecraft:resistance infinite 4 true
execute as @a[gamemode=survival,nbt={Dimension:"minecraft:the_end"}] if score @s temp_health matches 1.. if data storage minecraft:master {end:1} unless entity @e[type=minecraft:ender_dragon] in the_end if loaded -100 0 -100 if loaded 100 0 100 run effect give @a minecraft:darkness infinite 4 true
execute as @a[gamemode=survival,nbt={Dimension:"minecraft:the_end"}] if score @s temp_health matches 1.. if data storage minecraft:master {end:1} unless entity @e[type=minecraft:ender_dragon] in the_end if loaded -100 0 -100 if loaded 100 0 100 run schedule function roguecraft:final/tp 14s append
execute as @e[tag=egg_interaction] if data entity @s attack positioned 0.5 137.5 0.5 run function roguecraft:final/egg_damage
execute as @e[tag=egg_block] at @s run tp @s ~ ~ ~ ~2 ~