execute at @e[tag=final] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:0}
execute at @e[tag=final] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 2 1
kill @e[tag=final]
kill @e[tag=egg_block]
kill @e[tag=egg_interaction]
playsound minecraft:block.glass.break master @a ~ ~2 ~ 1 0.5
playsound minecraft:block.glass.break master @a ~ ~2 ~ 1 0.75
playsound minecraft:block.glass.break master @a ~ ~2 ~ 1 1
playsound minecraft:block.glass.break master @a ~ ~2 ~ 1 1.25
playsound minecraft:block.glass.break master @a ~ ~2 ~ 1 1.5
playsound minecraft:entity.wither.break_block master @a ~ ~2 ~ 1 1.5
particle minecraft:reverse_portal ~ ~2 ~ 0.2 0.2 0.2 0.1 500
particle minecraft:flame ~ ~2 ~ 0.2 0.2 0.2 0.5 100
particle minecraft:soul_fire_flame ~ ~2 ~ 0.2 0.2 0.2 0.5 100
title @a title {"translate":"roguecraft.title.run_end_dragon","color":"light_purple"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~2 ~ 1 1
advancement grant @a[advancements={roguecraft:roguecraft/run_complete=false}] only roguecraft:roguecraft/run_complete
execute if score @e[tag=master,type=marker,limit=1] difficulty_level matches ..4 run advancement grant @a[advancements={roguecraft:roguecraft/speedrun=false}] only roguecraft:roguecraft/speedrun

tag @s remove victory

effect give @a minecraft:nausea infinite 0 true
schedule function roguecraft:final/hub_tp 6s