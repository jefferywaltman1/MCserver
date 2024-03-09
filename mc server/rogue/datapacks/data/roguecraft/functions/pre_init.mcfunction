execute if loaded 31 ~ 79 if loaded 31 ~ -16 if loaded -32 ~ 79 if loaded -32 ~ -16 unless entity @e[type=marker,tag=master] run function roguecraft:init
effect give @a resistance 2 4 true
execute unless loaded 31 ~ 79 run tp @a[tag=init_player] 0 0 0
execute unless loaded 31 ~ -16 run tp @a[tag=init_player] 0 0 0
execute unless loaded -32 ~ 79 run tp @a[tag=init_player] 0 0 0
execute unless loaded -32 ~ -16 run tp @a[tag=init_player] 0 0 0
forceload add 30 78 -29 -14
execute unless entity @e[type=marker,tag=master] run schedule function roguecraft:pre_init 1s replace