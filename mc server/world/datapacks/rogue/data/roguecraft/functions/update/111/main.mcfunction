scoreboard players set @a version_num 2
data merge storage minecraft:master {version_num:2}

execute as @a if score @s speed matches 6.. run function roguecraft:update/111/dec_speed
execute as @a if score @s defense matches 11.. run function roguecraft:update/111/dec_defense

#tellraw @a[tag=init_player] ["",{"text":"If you don't already have the 1.1.1 resource pack, you can download it","color":"aqua"},{"text":" "},{"text":"here","color":"green","bold":true,"underlined":false,"clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/rogue-craft/version/TC0dWIl8"}}]

#regenerate hub
kill @e[type=!player,tag=!master,tag=!id]
place template roguecraft:hub -29 96 -14