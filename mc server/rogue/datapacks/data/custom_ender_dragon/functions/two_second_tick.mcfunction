execute as @e[type=minecraft:area_effect_cloud,tag=lightning_ring] run execute positioned 0 100 0 run execute if entity @s[distance=8..] run execute at @s positioned over motion_blocking run summon minecraft:lightning_bolt
execute at @e[type=area_effect_cloud,tag=auto_aim] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 0
execute at @e[type=area_effect_cloud,tag=auto_aim] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 5 0

function custom_ender_dragon:rng_2
execute if score @e[type=marker,tag=emaster,limit=1] dragon_rng matches 1 if score @e[type=marker,tag=emaster,limit=1] dragon_phase matches 12..14 run execute at @e[type=marker,tag=phase_2t,sort=random,limit=1] unless entity @e[type=minecraft:end_crystal,distance=..1] run execute as @a[nbt={Dimension:"minecraft:the_end"}] at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 0.5 2
execute if score @e[type=marker,tag=emaster,limit=1] dragon_rng matches 1 if score @e[type=marker,tag=emaster,limit=1] dragon_phase matches 12..14 run execute at @e[type=marker,tag=phase_2t,sort=random,limit=1] unless entity @e[type=minecraft:end_crystal,distance=..1] run summon minecraft:end_crystal ~ ~ ~ {ShowBottom:false,Glowing:true,BeamTarget:{X:0,Y:73,Z:0}}

execute if data storage minecraft:master {end_generated:0} in minecraft:the_end if loaded -140 127 -140 if loaded 140 127 140 run function custom_ender_dragon:clear_end

schedule function custom_ender_dragon:two_second_tick 40t