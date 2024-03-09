tellraw @a "test"
tag @s add marked
$summon minecraft:text_display ~ ~1.6 ~ {text:' "$(name)\\n" ',Rotation:[$(rotation).0f,0.0f]}
$summon minecraft:interaction ~ ~-0.5 ~ {Tags:["class_shop"],Rotation:[$(rotation).0f,0.0f],height:2}
tp @s ~ ~0.5 ~