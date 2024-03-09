execute if data storage minecraft:master {shop_text:1} run data merge storage minecraft:master {shop_text:2}
execute if data storage minecraft:master {shop_text:0} run data merge storage minecraft:master {shop_text:1}
execute if data storage minecraft:master {shop_text:2} run data merge storage minecraft:master {shop_text:0}

schedule function roguecraft:shops/switch_shop_text 3s append

execute at @e[type=minecraft:block_display,tag=egg_block] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 2 0
execute at @e[type=minecraft:block_display,tag=egg_block] run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 1 1