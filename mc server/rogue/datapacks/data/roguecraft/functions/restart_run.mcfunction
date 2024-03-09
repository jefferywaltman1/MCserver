tag @s add current_main

execute unless entity @a[tag=restart] if entity @a[tag=!current_main,gamemode=!spectator] if score @s class matches -1 run tellraw @a [{"selector":"@s","color":"red"}," ",{"translate":"roguecraft.chat_messages.restart_first","color":"yellow","bold":false}]
execute unless entity @a[tag=restart] if entity @a[tag=!current_main,gamemode=!spectator] if score @s class matches 0 run tellraw @a [{"selector":"@s","color":"gray"}," ",{"translate":"roguecraft.chat_messages.restart_first","color":"yellow","bold":false}]
execute unless entity @a[tag=restart] if entity @a[tag=!current_main,gamemode=!spectator] if score @s class matches 1 run tellraw @a [{"selector":"@s","color":"blue"}," ",{"translate":"roguecraft.chat_messages.restart_first","color":"yellow","bold":false}]
execute unless entity @a[tag=restart] if entity @a[tag=!current_main,gamemode=!spectator] if score @s class matches 2 run tellraw @a [{"selector":"@s","color":"red"}," ",{"translate":"roguecraft.chat_messages.restart_first","color":"yellow","bold":false}]
execute unless entity @a[tag=restart] if entity @a[tag=!current_main,gamemode=!spectator] if score @s class matches 3 run tellraw @a [{"selector":"@s","color":"white"}," ",{"translate":"roguecraft.chat_messages.restart_first","color":"yellow","bold":false}]


execute if entity @a[tag=restart] if entity @a[tag=!current_main,gamemode=!spectator] if score @s class matches -1 unless entity @s[tag=restart] run tellraw @a [{"selector":"@s","color":"red"}," ",{"translate":"roguecraft.chat_messages.restart","color":"yellow","bold":false}]
execute if entity @a[tag=restart] if entity @a[tag=!current_main,gamemode=!spectator] if score @s class matches 0 unless entity @s[tag=restart] run tellraw @a [{"selector":"@s","color":"gray"}," ",{"translate":"roguecraft.chat_messages.restart","color":"yellow","bold":false}]
execute if entity @a[tag=restart] if entity @a[tag=!current_main,gamemode=!spectator] if score @s class matches 1 unless entity @s[tag=restart] run tellraw @a [{"selector":"@s","color":"blue"}," ",{"translate":"roguecraft.chat_messages.restart","color":"yellow","bold":false}]
execute if entity @a[tag=restart] if entity @a[tag=!current_main,gamemode=!spectator] if score @s class matches 2 unless entity @s[tag=restart] run tellraw @a [{"selector":"@s","color":"red"}," ",{"translate":"roguecraft.chat_messages.restart","color":"yellow","bold":false}]
execute if entity @a[tag=restart] if entity @a[tag=!current_main,gamemode=!spectator] if score @s class matches 3 unless entity @s[tag=restart] run tellraw @a [{"selector":"@s","color":"white"}," ",{"translate":"roguecraft.chat_messages.restart","color":"yellow","bold":false}]

execute if entity @a[tag=restart] if entity @a[tag=!current_main,gamemode=!spectator] if entity @s[tag=restart] run tellraw @s {"translate":"roguecraft.chat_messages.restart_error","color":"yellow","bold":false}

tag @s add restart

execute unless entity @a[tag=!restart,gamemode=!spectator] run tag @a add restart_all
execute if entity @a[tag=restart_all] run tag @a remove restart
execute if entity @a[tag=restart_all] run tellraw @a {"translate":"roguecraft.chat_messages.restart_all","color":"yellow","bold":false}
execute if entity @a[tag=restart_all] run kill @a[gamemode=!spectator]

tag @s remove current_main
tag @a remove restart_all