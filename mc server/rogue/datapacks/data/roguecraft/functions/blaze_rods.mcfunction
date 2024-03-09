scoreboard players set @e[tag=master,limit=1] blaze_rods 1
$tellraw @a ["",{"translate":"roguecraft.chat_messages.stronghold_generate","bold":true,"color":"dark_purple"},{"text":" $(X), $(Z)","bold":true,"color":"dark_purple"}]
$execute in minecraft:overworld run summon minecraft:marker $(X) 0 $(Z) {Tags:["stronghold"]}

execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.3
execute as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 2