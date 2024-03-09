tag @s add marked
$summon minecraft:item_display ~ ~ ~ {item:{Count:1,id:"minecraft:$(item_display)"},Rotation:[$(rotation).0f,0.0f]}
$summon minecraft:text_display ~ ~0.6 ~ {text:' "$(name)\\nCost: $(cost)✦" ',Rotation:[$(rotation).0f,0.0f]}
$summon minecraft:interaction ~ ~-0.5 ~ {Tags:["upgrade_shop"],Rotation:[$(rotation).0f,0.0f]}