data merge storage minecraft:master {ender_dragon:{split_success:0}}
execute unless data entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:3} unless data entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:4} unless data entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:5} unless data entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:6} run data merge storage master {ender_dragon:{split_success:1}}

execute if data storage master {ender_dragon:{split_success:1}} at @e[type=ender_dragon] run summon minecraft:armor_stand ~ ~-4 ~ {OnGround:0b,Tags:["split_1"],Invisible:1,ArmorItems:[{},{},{},{id:amethyst_block,Count:1b}],Small:1b}
execute if data storage master {ender_dragon:{split_success:1}} as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:entity.ender_dragon.shoot hostile @s ~ ~ ~
execute if data storage master {ender_dragon:{split_success:0}} run function custom_ender_dragon:p3/attack_select