tag @s add current_main

#attributes
$attribute @s minecraft:generic.armor base set $(defense)
$attribute @s minecraft:generic.armor_toughness base set $(armor_toughness)
$attribute @s minecraft:generic.max_health base set $(max_health)
$attribute @s minecraft:generic.knockback_resistance base set $(knockback_resistance)
$attribute @s minecraft:generic.attack_speed base set $(attack_speed)
$attribute @s minecraft:generic.attack_damage base set $(attack_damage)

#effects
execute unless score @s haste matches 0 run function roguecraft:upgrades/haste with entity @e[tag=main_storage,limit=1] data
execute unless score @s jump_boost matches 0 run function roguecraft:upgrades/jump_boost with entity @e[tag=main_storage,limit=1] data
execute unless score @s resistance matches 0 run function roguecraft:upgrades/resistance with entity @e[tag=main_storage,limit=1] data
execute unless score @s speed matches 0 run function roguecraft:upgrades/speed with entity @e[tag=main_storage,limit=1] data
effect give @s[scores={water_breathing=1}] minecraft:water_breathing infinite 0 true
effect give @s[scores={dolphins_grace=1}] minecraft:dolphins_grace infinite 0 true
effect give @s[scores={fire_resistance=1}] minecraft:fire_resistance infinite 0 true
effect give @s[scores={night_vision=1}] minecraft:night_vision infinite 0 true
effect give @s[scores={regeneration=1}] minecraft:regeneration infinite 0 true
execute if entity @a[tag=!current_main] if data storage minecraft:master {glowing:1} run effect give @s minecraft:glowing infinite 0 true

##tools'n stuff
#armor
execute if score @s armor matches 1 unless score @s class matches 3 run function roguecraft:upgrades/armor/leather with entity @e[tag=main_storage,limit=1] data
execute if score @s armor matches 2 unless score @s class matches 3 run function roguecraft:upgrades/armor/gold with entity @e[tag=main_storage,limit=1] data
execute if score @s armor matches 3 unless score @s class matches 3 run function roguecraft:upgrades/armor/chainmail with entity @e[tag=main_storage,limit=1] data
execute if score @s armor matches 4 unless score @s class matches 3 run function roguecraft:upgrades/armor/iron with entity @e[tag=main_storage,limit=1] data
execute if score @s armor matches 5 unless score @s class matches 3 run function roguecraft:upgrades/armor/diamond with entity @e[tag=main_storage,limit=1] data
execute if score @s armor matches 6 unless score @s class matches 3 run function roguecraft:upgrades/armor/netherite with entity @e[tag=main_storage,limit=1] data

#armor glass cannon
execute if score @s armor matches 1 if score @s class matches 3 run effect give @s minecraft:strength infinite 0 true
execute if score @s armor matches 2 if score @s class matches 3 run effect give @s minecraft:strength infinite 1 true
execute if score @s armor matches 3 if score @s class matches 3 run effect give @s minecraft:strength infinite 2 true
execute if score @s armor matches 4 if score @s class matches 3 run effect give @s minecraft:strength infinite 3 true
execute if score @s armor matches 5 if score @s class matches 3 run effect give @s minecraft:strength infinite 4 true
execute if score @s armor matches 6 if score @s class matches 3 run effect give @s minecraft:strength infinite 5 true
execute if score @s armor matches 1 if score @s class matches 3 run scoreboard players set @s current_strength 1
execute if score @s armor matches 2 if score @s class matches 3 run scoreboard players set @s current_strength 2
execute if score @s armor matches 3 if score @s class matches 3 run scoreboard players set @s current_strength 3
execute if score @s armor matches 4 if score @s class matches 3 run scoreboard players set @s current_strength 4
execute if score @s armor matches 5 if score @s class matches 3 run scoreboard players set @s current_strength 5
execute if score @s armor matches 6 if score @s class matches 3 run scoreboard players set @s current_strength 6

#tools
execute if score @s tool matches 0 run function roguecraft:upgrades/tools/none with entity @e[tag=main_storage,limit=1] data
execute if score @s tool matches 1 run function roguecraft:upgrades/tools/wood with entity @e[tag=main_storage,limit=1] data
execute if score @s tool matches 2 run function roguecraft:upgrades/tools/stone with entity @e[tag=main_storage,limit=1] data
execute if score @s tool matches 3 run function roguecraft:upgrades/tools/iron with entity @e[tag=main_storage,limit=1] data
execute if score @s tool matches 4 run function roguecraft:upgrades/tools/diamond with entity @e[tag=main_storage,limit=1] data
execute if score @s tool matches 5 run function roguecraft:upgrades/tools/netherite with entity @e[tag=main_storage,limit=1] data

#bow
$item replace entity @s[scores={bow=1}] container.27 with bow{Unbreakable:true,Enchantments:[{id:"minecraft:power",lvl:$(power)},{id:"minecraft:punch",lvl:$(punch)},{id:"minecraft:flame",lvl:$(flame)},{id:"minecraft:infinity",lvl:$(infinity)}]}
item replace entity @s[scores={bow=1}] container.28 with minecraft:arrow 16

##utility stuff
execute unless score @s pearls matches 0 run function roguecraft:upgrades/pearls with entity @e[tag=main_storage,limit=1] data
item replace entity @s[scores={arrows=1}] container.28 with minecraft:arrow 16
item replace entity @s[scores={golden_apple=1}] container.34 with minecraft:golden_apple 5
item replace entity @s[scores={enchanted_golden_apple=1}] container.25 with minecraft:enchanted_golden_apple 1
item replace entity @s[scores={flint_and_steel=1}] container.26 with minecraft:flint_and_steel 1
item replace entity @s[scores={bucket=1}] container.7 with minecraft:bucket 1
item replace entity @s[scores={cobblestone=1}] container.8 with minecraft:cobblestone 64
item replace entity @s[scores={bed=1}] container.17 with minecraft:red_bed 1
item replace entity @s[scores={wood=1}] container.16 with minecraft:oak_planks 64
function roguecraft:upgrades/compass with storage master Region

#food
item replace entity @s[scores={food=1}] weapon.offhand with bread 8
item replace entity @s[scores={food=2}] weapon.offhand with baked_potato 16
item replace entity @s[scores={food=3}] weapon.offhand with cooked_chicken 32
item replace entity @s[scores={food=4}] weapon.offhand with pumpkin_pie 48
item replace entity @s[scores={food=5}] weapon.offhand with golden_carrot 64

execute as @a store result score @s current_health run attribute @s minecraft:generic.max_health base get

#abilities
#ability items
#execute store result storage minecraft:master temp_score_ability int 1 run scoreboard players get @s ability_1
#data merge storage minecraft:master {temp_ability_num:1}
#execute if score @s ability_1 matches 0.. run function roguecraft:upgrades/ability/give_ability_init with storage master

#execute store result storage minecraft:master temp_score_ability int 1 run scoreboard players get @s ability_2
#data merge storage minecraft:master {temp_ability_num:2}
#execute if score @s ability_2 matches 0.. run function roguecraft:upgrades/ability/give_ability_init with storage master

#execute store result storage minecraft:master temp_score_ability int 1 run scoreboard players get @s ability_3
#data merge storage minecraft:master {temp_ability_num:3}
#execute if score @s ability_3 matches 0.. run function roguecraft:upgrades/ability/give_ability_init with storage master

#execute store result storage minecraft:master temp_score_ability int 1 run scoreboard players get @s ability_4
#data merge storage minecraft:master {temp_ability_num:4}
#execute if score @s ability_4 matches 0.. if score @s class matches 1 run function roguecraft:upgrades/ability/give_ability_init with storage master

#execute as @s[scores={class=0}] run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{display:{Name:' "Invulnerable Shield | Cost: 160" '},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:5}
#execute as @s[scores={class=2}] run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{display:{Name:' "Revitalize | Cost: 80" '},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:5}
#execute as @s[scores={class=3}] run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{display:{Name:' "Adrenaline | Cost: 3 Hearts" '},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:5}

execute as @s[scores={ability_1=0}] run item replace entity @s container.6 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_explosion"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:2}
execute as @s[scores={ability_1=1}] run item replace entity @s container.6 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_heal"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:2}
execute as @s[scores={ability_1=2}] run item replace entity @s container.6 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_mining"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:2}
execute as @s[scores={ability_1=3}] run item replace entity @s container.6 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_damage_sphere"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:2}
execute as @s[scores={ability_1=4}] run item replace entity @s container.6 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_arrow_wave"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:2}
execute as @s[scores={ability_1=5}] run item replace entity @s container.6 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_spikes"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:2}
execute as @s[scores={ability_1=6}] run item replace entity @s container.6 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_fireball"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:2}
execute as @s[scores={ability_1=7}] run item replace entity @s container.6 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_levitate"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:2}
execute as @s[scores={ability_1=8}] run item replace entity @s container.6 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_liquid_walker"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:2}
execute as @s[scores={ability_1=11}] run item replace entity @s container.6 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_dirt_walker"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:2}

execute as @s[scores={ability_2=0}] run item replace entity @s container.33 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_explosion"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:3}
execute as @s[scores={ability_2=1}] run item replace entity @s container.33 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_heal"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:3}
execute as @s[scores={ability_2=2}] run item replace entity @s container.33 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_mining"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:3}
execute as @s[scores={ability_2=3}] run item replace entity @s container.33 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_damage_sphere"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:3}
execute as @s[scores={ability_2=4}] run item replace entity @s container.33 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_arrow_wave"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:3}
execute as @s[scores={ability_2=5}] run item replace entity @s container.33 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_spikes"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:3}
execute as @s[scores={ability_2=6}] run item replace entity @s container.33 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_fireball"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:3}
execute as @s[scores={ability_2=7}] run item replace entity @s container.33 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_levitate"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:3}
execute as @s[scores={ability_2=8}] run item replace entity @s container.33 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_liquid_walker"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:3}
execute as @s[scores={ability_2=11}] run item replace entity @s container.33 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_dirt_walker"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:3}

execute as @s[scores={ability_3=0}] run item replace entity @s container.24 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_explosion"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:4}
execute as @s[scores={ability_3=1}] run item replace entity @s container.24 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_heal"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:4}
execute as @s[scores={ability_3=2}] run item replace entity @s container.24 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_mining"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:4}
execute as @s[scores={ability_3=3}] run item replace entity @s container.24 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_damage_sphere"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:4}
execute as @s[scores={ability_3=4}] run item replace entity @s container.24 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_arrow_wave"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:4}
execute as @s[scores={ability_3=5}] run item replace entity @s container.24 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_spikes"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:4}
execute as @s[scores={ability_3=6}] run item replace entity @s container.24 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_fireball"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:4}
execute as @s[scores={ability_3=7}] run item replace entity @s container.24 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_levitate"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:4}
execute as @s[scores={ability_3=8}] run item replace entity @s container.24 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_liquid_walker"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:4}
execute as @s[scores={ability_3=11}] run item replace entity @s container.24 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_dirt_walker"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:4}

execute as @s[scores={class=1,ability_4=0}] run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_explosion"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:5}
execute as @s[scores={class=1,ability_4=1}] run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_heal"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:5}
execute as @s[scores={class=1,ability_4=2}] run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_mining"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:5}
execute as @s[scores={class=1,ability_4=3}] run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_damage_sphere"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:5}
execute as @s[scores={class=1,ability_4=4}] run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_arrow_wave"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:5}
execute as @s[scores={class=1,ability_4=5}] run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_spikes"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:5}
execute as @s[scores={class=1,ability_4=6}] run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_fireball"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:5}
execute as @s[scores={class=1,ability_4=7}] run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_levitate"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:5}
execute as @s[scores={class=1,ability_4=8}] run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_liquid_walker"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:5}
execute as @s[scores={class=1,ability_4=11}] run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.ability.name.ability_dirt_walker"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:5}

execute as @s[scores={class=0}] run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.class_ability.tank"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:5}
execute as @s[scores={class=2}] if entity @a[tag=!current_main] run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.class_ability.healer"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:5}
execute as @s[scores={class=3}] run item replace entity @s container.15 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"translate":"roguecraft.class_ability.glass_cannon"}]'},Enchantments:[{id:"minecraft:channeling",lvl:1}],CustomModelData:5}

execute as @s[scores={class=2}] unless entity @a[tag=!current_main] run item replace entity @s container.5 with minecraft:splash_potion{Potion:"minecraft:healing"}
execute as @s[scores={class=2}] unless entity @a[tag=!current_main] run item replace entity @s container.14 with minecraft:splash_potion{Potion:"minecraft:strong_regeneration"}
execute as @s[scores={class=2}] unless entity @a[tag=!current_main] run item replace entity @s container.23 with minecraft:splash_potion{Potion:"minecraft:regeneration"}
execute as @s[scores={class=2}] unless entity @a[tag=!current_main] run item replace entity @s container.32 with minecraft:splash_potion{Potion:"minecraft:strong_healing"}
tag @s remove current_main

$team join class_$(class) @s

#tank passive
execute as @s[scores={class=0}] run effect give @s minecraft:health_boost infinite 2 true

#healer passive
execute as @s[scores={class=0}] run effect give @s minecraft:health_boost infinite 1 true
execute if score @s class matches 2 if score @s regeneration matches 0 run effect give @s minecraft:regeneration infinite 0 true
execute if score @s class matches 2 if score @s regeneration matches 1 run effect give @s minecraft:regeneration infinite 1 true

#mage
effect give @s[scores={class=1}] minecraft:weakness infinite 0 true

execute as @a run scoreboard players operation @s mana = @s max_mana