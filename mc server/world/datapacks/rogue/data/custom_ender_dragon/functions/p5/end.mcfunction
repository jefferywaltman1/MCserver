schedule clear custom_ender_dragon:p5/attack_timer_5s
bossbar remove minecraft:custom_dragon
execute in the_end positioned 0 100 0 run kill @e[type=marker,distance=..300]
execute in minecraft:the_end run gamerule commandModificationBlockLimit 1000000000
data merge entity @e[type=minecraft:ender_dragon,limit=1] {CustomName:' "Ender Dragon" '}

bossbar set minecraft:dragon players @a[tag=olkjahsoihaef]

kill @e[tag=split_1]
kill @e[tag=split_2]
kill @e[tag=split_3]
kill @e[tag=Meteor]