data modify storage minecraft:master end_generation_current set from storage minecraft:master end_generation_list[0]
execute if data storage minecraft:master {end_generation_current:"c3"} run function roguecraft:build_end_2 with storage minecraft:master
execute unless data storage minecraft:master {end_generation_current:"c3"} in the_end if loaded -100 0 -100 if loaded 100 0 100 run function roguecraft:build_end_2 with storage minecraft:master
execute unless data storage minecraft:master {end_generation_current:"c3"} in the_end unless loaded -100 0 -100 run schedule function roguecraft:build_end_1 1t replace
execute unless data storage minecraft:master {end_generation_current:"c3"} in the_end unless loaded 100 0 100 run schedule function roguecraft:build_end_1 1t replace