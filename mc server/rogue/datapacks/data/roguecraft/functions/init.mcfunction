place template roguecraft:hub -29 96 -14

summon minecraft:marker 0 100 0 {Tags:["master"]}
scoreboard players set @e[tag=master,type=marker] id 0
scoreboard players set @e[tag=master,type=marker] region_x -100000
scoreboard players set @e[tag=master,type=marker] region_z 0
scoreboard players set @e[tag=master,type=marker] difficulty 0
scoreboard players set @e[type=marker,tag=master,limit=1] difficulty_val_max 450

scoreboard players set @e[type=marker,tag=master,limit=1] region_dir 0
scoreboard players set @e[type=marker,tag=master,limit=1] region_counter_max 1
scoreboard players set @e[type=marker,tag=master,limit=1] region_counter 1

data merge storage minecraft:master {Region:{X:-100000,Z:0}}
data merge storage minecraft:master {shop_text:0}
data merge storage minecraft:master {id:0}
data merge storage minecraft:master {start:0}
data merge storage minecraft:master {run_active:0}
data merge storage minecraft:master {glowing:1}
data merge storage minecraft:master {sp_loss:1}
data merge storage minecraft:master {version_num:2}

execute store result storage minecraft:master Region.X int 1 run scoreboard players get @e[type=marker,tag=master,limit=1] region_x
execute store result storage minecraft:master Region.Z int 1 run scoreboard players get @e[type=marker,tag=master,limit=1] region_z

scoreboard players set @e[type=marker,tag=master] run_number 0
data merge storage minecraft:master {abilities:{0:{name:"explosion"},1:{name:"heal"},2:{name:"mining"},3:{name:"damage_sphere"},4:{name:"arrow_wave"},5:{name:"spikes"},6:{name:"fireball"},7:{name:"levitate"},8:{name:"liquid_walker"},9:{name:"proximity_mine"},10:{name:"lava_walker"},11:{name:"dirt_walker"}}}
data merge storage minecraft:master {temp_score_ability:0,temp_score_level:0}

team add ready ["",{"text":"[","bold":true,"color":"green"},{"translate":"roguecraft.generic.ready","bold":true,"color":"green"},{"text":"] ","bold":true,"color":"green"}]
team modify ready prefix ["",{"text":"[","bold":true,"color":"green"},{"translate":"roguecraft.generic.ready","bold":true,"color":"green"},{"text":"] ","bold":true,"color":"green"}]
team modify ready deathMessageVisibility never
team add not_ready ["",{"text":"[","bold":true,"color":"dark_red"},{"translate":"roguecraft.generic.not_ready","bold":true,"color":"dark_red"},{"text":"] ","bold":true,"color":"dark_red"}]
team modify not_ready prefix ["",{"text":"[","bold":true,"color":"dark_red"},{"translate":"roguecraft.generic.not_ready","bold":true,"color":"dark_red"},{"text":"] ","bold":true,"color":"dark_red"}]
team modify not_ready deathMessageVisibility never

bossbar add difficulty ["",{"translate":"roguecraft.bossbar.difficulty_level"},{"text":": 0"}]
bossbar set minecraft:difficulty color red
execute store result bossbar minecraft:difficulty max run scoreboard players get @e[type=marker,tag=master,limit=1] difficulty_val_max

function roguecraft:shops/switch_shop_text
function roguecraft:second
function roguecraft:three_second

#ability cost

#explosion
scoreboard players set @e[type=marker,tag=master] ability_cost_0_1 40
scoreboard players set @e[type=marker,tag=master] ability_cost_0_2 55
scoreboard players set @e[type=marker,tag=master] ability_cost_0_3 65
#heal
scoreboard players set @e[type=marker,tag=master] ability_cost_1_1 40
scoreboard players set @e[type=marker,tag=master] ability_cost_1_2 35
scoreboard players set @e[type=marker,tag=master] ability_cost_1_3 30
#mine
scoreboard players set @e[type=marker,tag=master] ability_cost_2_1 20
scoreboard players set @e[type=marker,tag=master] ability_cost_2_2 25
scoreboard players set @e[type=marker,tag=master] ability_cost_2_3 30
#damage
scoreboard players set @e[type=marker,tag=master] ability_cost_3_1 30
scoreboard players set @e[type=marker,tag=master] ability_cost_3_2 28
scoreboard players set @e[type=marker,tag=master] ability_cost_3_3 25
#arrow
scoreboard players set @e[type=marker,tag=master] ability_cost_4_1 12
scoreboard players set @e[type=marker,tag=master] ability_cost_4_2 9
scoreboard players set @e[type=marker,tag=master] ability_cost_4_3 5
#parry
scoreboard players set @e[type=marker,tag=master] ability_cost_5_1 70
scoreboard players set @e[type=marker,tag=master] ability_cost_5_2 60
scoreboard players set @e[type=marker,tag=master] ability_cost_5_3 50
#fireball
scoreboard players set @e[type=marker,tag=master] ability_cost_6_1 30
scoreboard players set @e[type=marker,tag=master] ability_cost_6_2 25
scoreboard players set @e[type=marker,tag=master] ability_cost_6_3 20
#levitate
scoreboard players set @e[type=marker,tag=master] ability_cost_7_1 40
scoreboard players set @e[type=marker,tag=master] ability_cost_7_2 38
scoreboard players set @e[type=marker,tag=master] ability_cost_7_3 35
#liquid walker
scoreboard players set @e[type=marker,tag=master] ability_cost_8_1 40
scoreboard players set @e[type=marker,tag=master] ability_cost_8_2 32
scoreboard players set @e[type=marker,tag=master] ability_cost_8_3 25
#proximity
scoreboard players set @e[type=marker,tag=master] ability_cost_9_1 0
scoreboard players set @e[type=marker,tag=master] ability_cost_9_2 0
scoreboard players set @e[type=marker,tag=master] ability_cost_9_3 0
#lava walker
scoreboard players set @e[type=marker,tag=master] ability_cost_10_1 60
scoreboard players set @e[type=marker,tag=master] ability_cost_10_2 55
scoreboard players set @e[type=marker,tag=master] ability_cost_10_3 50
#dirt walker
scoreboard players set @e[type=marker,tag=master] ability_cost_11_1 90
scoreboard players set @e[type=marker,tag=master] ability_cost_11_2 85
scoreboard players set @e[type=marker,tag=master] ability_cost_11_3 80
#class abilities
scoreboard players set @e[type=marker,tag=master] class_cost_0 160
scoreboard players set @e[type=marker,tag=master] class_cost_2 0
scoreboard players set @e[type=marker,tag=master] class_cost_3 0

scoreboard players set @e[type=marker,tag=master] revitalize_health 8
scoreboard players set @e[type=marker,tag=master] adrenaline_health 6

#class teams
team add class_0 ["",{"text":"[","bold":true,"color":"gray"},{"translate":"roguecraft.class.name.tank","bold":true,"color":"gray"},{"text":"] ","bold":true,"color":"gray"}]
team modify class_0 prefix ["",{"text":"[","bold":true,"color":"gray"},{"translate":"roguecraft.class.name.tank","bold":true,"color":"gray"},{"text":"] ","bold":true,"color":"gray"}]
team modify class_0 deathMessageVisibility always
team modify class_0 color gray

team add class_1 ["",{"text":"[","bold":true,"color":"blue"},{"translate":"roguecraft.class.name.mage","bold":true,"color":"blue"},{"text":"] ","bold":true,"color":"blue"}]
team modify class_1 prefix ["",{"text":"[","bold":true,"color":"blue"},{"translate":"roguecraft.class.name.mage","bold":true,"color":"blue"},{"text":"] ","bold":true,"color":"blue"}]
team modify class_1 deathMessageVisibility always
team modify class_1 color blue

team add class_2 ["",{"text":"[","bold":true,"color":"red"},{"translate":"roguecraft.class.name.healer","bold":true,"color":"red"},{"text":"] ","bold":true,"color":"red"}]
team modify class_2 prefix ["",{"text":"[","bold":true,"color":"red"},{"translate":"roguecraft.class.name.healer","bold":true,"color":"red"},{"text":"] ","bold":true,"color":"red"}]
team modify class_2 deathMessageVisibility always
team modify class_2 color red

team add class_3 ["",{"text":"[","bold":true,"color":"white"},{"translate":"roguecraft.class.name.glass_cannon","bold":true,"color":"white"},{"text":"] ","bold":true,"color":"white"}]
team modify class_3 prefix ["",{"text":"[","bold":true,"color":"white"},{"translate":"roguecraft.class.name.glass_cannon","bold":true,"color":"white"},{"text":"] ","bold":true,"color":"white"}]
team modify class_3 deathMessageVisibility always
team modify class_3 color white

kill @e[type=item]