#scoreboard setup
scoreboard objectives add region_x dummy
scoreboard objectives add region_z dummy
scoreboard objectives add region_dir dummy
scoreboard objectives add region_counter_max dummy
scoreboard objectives add region_counter dummy
scoreboard objectives add run_number dummy
scoreboard objectives add blaze_rods dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add difficulty dummy
scoreboard objectives add difficulty_level dummy
scoreboard objectives add difficulty_val_max dummy
scoreboard objectives add random_difficulty dummy
scoreboard objectives add random_difficulty_max dummy
scoreboard objectives add difficulty dummy
scoreboard objectives add temp_health dummy
scoreboard objectives add current_health dummy
scoreboard objectives add current_strength dummy

scoreboard objectives add revitalize_health dummy
scoreboard objectives add adrenaline_health dummy

scoreboard objectives add entry_x dummy
scoreboard objectives add entry_z dummy

scoreboard objectives add version_num dummy

##upgrades
scoreboard objectives add defense dummy
scoreboard objectives add armor_toughness dummy
scoreboard objectives add max_health dummy
scoreboard objectives add speed dummy
scoreboard objectives add knockback_resistance dummy
scoreboard objectives add attack_speed dummy
scoreboard objectives add attack_damage dummy
scoreboard objectives add water_breathing dummy
scoreboard objectives add dolphins_grace dummy
scoreboard objectives add fire_resistance dummy
scoreboard objectives add haste dummy
scoreboard objectives add jump_boost dummy
scoreboard objectives add night_vision dummy
scoreboard objectives add regeneration dummy
scoreboard objectives add resistance dummy
scoreboard objectives add mana dummy
scoreboard objectives add max_mana dummy
scoreboard objectives add mana_regen dummy
scoreboard objectives add mage_mana_regen dummy

scoreboard objectives add dummy_upgrade dummy

#starting equipment
scoreboard objectives add armor dummy
scoreboard objectives add protection dummy
scoreboard objectives add feather_falling dummy
scoreboard objectives add thorns dummy
scoreboard objectives add swift_sneak dummy
scoreboard objectives add aqua_affinity dummy
scoreboard objectives add respiration dummy
scoreboard objectives add tool dummy
scoreboard objectives add efficiency dummy
scoreboard objectives add fortune dummy
scoreboard objectives add sword dummy
scoreboard objectives add sharpness dummy
scoreboard objectives add looting dummy
scoreboard objectives add sweeping dummy
scoreboard objectives add bow dummy
scoreboard objectives add arrows dummy
scoreboard objectives add power dummy
scoreboard objectives add punch dummy
scoreboard objectives add flame dummy
scoreboard objectives add infinity dummy

#starting equipment (misc)
scoreboard objectives add food dummy
scoreboard objectives add golden_apple dummy
scoreboard objectives add enchanted_golden_apple dummy
scoreboard objectives add flint_and_steel dummy
scoreboard objectives add bucket dummy
scoreboard objectives add pearls dummy
scoreboard objectives add cobblestone dummy
scoreboard objectives add wood dummy
scoreboard objectives add bed dummy
scoreboard objectives add compass dummy

#abilities and classes
scoreboard objectives add ability_1 dummy
scoreboard objectives add ability_2 dummy
scoreboard objectives add ability_3 dummy
scoreboard objectives add ability_4 dummy
scoreboard objectives add class dummy

scoreboard objectives add ability_explosion dummy
scoreboard objectives add ability_mining dummy
scoreboard objectives add ability_heal dummy
scoreboard objectives add ability_damage_sphere dummy
scoreboard objectives add ability_spikes dummy
scoreboard objectives add ability_arrow_wave dummy
scoreboard objectives add ability_levitate dummy
scoreboard objectives add ability_fireball dummy
scoreboard objectives add ability_proximity_mine dummy
scoreboard objectives add ability_lava_walker dummy
scoreboard objectives add ability_liquid_walker dummy
scoreboard objectives add ability_dirt_walker dummy

scoreboard objectives add class_glass_cannon dummy
scoreboard objectives add class_healer dummy
scoreboard objectives add class_mage dummy
scoreboard objectives add class_tank dummy

scoreboard objectives add parry_timer dummy
scoreboard objectives add damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add dirt_timer dummy
scoreboard objectives add liquid_timer dummy
scoreboard objectives add lava_timer dummy

#skillpoints
scoreboard objectives add skillpoints dummy
scoreboard objectives add skillpoint_cache dummy
scoreboard objectives setdisplay list skillpoints
scoreboard objectives add level_current dummy
scoreboard objectives add level_max dummy

scoreboard objectives add smelt_iron dummy
scoreboard objectives add lava_bucket dummy
scoreboard objectives add obsidian dummy
scoreboard objectives add enter_nether dummy
scoreboard objectives add find_fortress dummy
scoreboard objectives add obtain_blaze_rod dummy
scoreboard objectives add enter_end dummy

scoreboard objectives add steps dummy
scoreboard objectives add id dummy

scoreboard objectives add y dummy
scoreboard objectives add ability_item_1_amount dummy
scoreboard objectives add ability_item_2_amount dummy
scoreboard objectives add ability_item_3_amount dummy
scoreboard objectives add ability_item_4_amount dummy
scoreboard objectives add start_item_amount dummy

#ability cost
scoreboard objectives add ability_cost_0_1 dummy
scoreboard objectives add ability_cost_0_2 dummy
scoreboard objectives add ability_cost_0_3 dummy
scoreboard objectives add ability_cost_1_1 dummy
scoreboard objectives add ability_cost_1_2 dummy
scoreboard objectives add ability_cost_1_3 dummy
scoreboard objectives add ability_cost_2_1 dummy
scoreboard objectives add ability_cost_2_2 dummy
scoreboard objectives add ability_cost_2_3 dummy
scoreboard objectives add ability_cost_3_1 dummy
scoreboard objectives add ability_cost_3_2 dummy
scoreboard objectives add ability_cost_3_3 dummy
scoreboard objectives add ability_cost_4_1 dummy
scoreboard objectives add ability_cost_4_2 dummy
scoreboard objectives add ability_cost_4_3 dummy
scoreboard objectives add ability_cost_5_1 dummy
scoreboard objectives add ability_cost_5_2 dummy
scoreboard objectives add ability_cost_5_3 dummy
scoreboard objectives add ability_cost_6_1 dummy
scoreboard objectives add ability_cost_6_2 dummy
scoreboard objectives add ability_cost_6_3 dummy
scoreboard objectives add ability_cost_7_1 dummy
scoreboard objectives add ability_cost_7_2 dummy
scoreboard objectives add ability_cost_7_3 dummy
scoreboard objectives add ability_cost_8_1 dummy
scoreboard objectives add ability_cost_8_2 dummy
scoreboard objectives add ability_cost_8_3 dummy
scoreboard objectives add ability_cost_9_1 dummy
scoreboard objectives add ability_cost_9_2 dummy
scoreboard objectives add ability_cost_9_3 dummy
scoreboard objectives add ability_cost_10_1 dummy
scoreboard objectives add ability_cost_10_2 dummy
scoreboard objectives add ability_cost_10_3 dummy
scoreboard objectives add ability_cost_11_1 dummy
scoreboard objectives add ability_cost_11_2 dummy
scoreboard objectives add ability_cost_11_3 dummy

scoreboard objectives add class_cost_0 dummy
scoreboard objectives add class_cost_2 dummy
scoreboard objectives add class_cost_3 dummy

scoreboard objectives add egg_damage dummy

scoreboard objectives add stronghold_location trigger
scoreboard objectives add restart_run trigger
scoreboard objectives add toggle_ability_feedback trigger

scoreboard objectives add adrenaline_advancement_timer dummy
scoreboard objectives add shops_completed dummy

scoreboard objectives add right_click minecraft.used:minecraft.warped_fungus_on_a_stick

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

function custom_ender_dragon:setup

forceload add 30 78 -29 -14

execute unless entity @e[type=marker,tag=master] run schedule function roguecraft:pre_init 5s
gamerule spawnRadius 0
gamerule playersSleepingPercentage 1
gamerule keepInventory true
gamerule sendCommandFeedback false

schedule clear roguecraft:second
schedule clear roguecraft:three_second
schedule clear roguecraft:shops/switch_shop_text
function roguecraft:second
function roguecraft:three_second
function roguecraft:shops/switch_shop_text