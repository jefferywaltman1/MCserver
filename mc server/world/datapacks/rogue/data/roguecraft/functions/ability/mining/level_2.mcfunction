execute store result score @s y run data get entity @s Pos[1] 100

data merge storage minecraft:master {end_frame:0}
data merge storage minecraft:master {end_frame_count:0}
execute store success storage minecraft:master end_frame int 1 run fill ~2 ~3 ~2 ~-2 ~-1 ~-2 minecraft:end_portal_frame replace minecraft:end_portal_frame
execute store result storage minecraft:master end_frame_count int 1 run fill ~2 ~3 ~2 ~-2 ~-1 ~-2 minecraft:cyan_stained_glass replace minecraft:end_portal_frame
execute if data storage minecraft:master {end_frame:1} run function roguecraft:ability/mining/give_end_portal with storage minecraft:master

execute if dimension minecraft:overworld if score @s y matches -6200.. run fill ~2 ~3 ~2 ~-2 ~-1 ~-2 air destroy
execute if dimension minecraft:overworld if score @s y matches ..-6200 run fill ~2 ~3 ~2 ~-2 -64 ~-2 air destroy

execute unless dimension minecraft:overworld if score @s y matches 200.. run fill ~2 ~3 ~2 ~-2 ~-1 ~-2 air destroy
execute unless dimension minecraft:overworld if score @s y matches ..200 run fill ~2 ~3 ~2 ~-2 0 ~-2 air destroy

#tellraw @s[scores={toggle_ability_feedback=0}] {"text":"You cast Area Mine","italic":true,"color":"blue"}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 2 1.5