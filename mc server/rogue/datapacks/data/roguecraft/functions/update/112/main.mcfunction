scoreboard players set @a version_num 3
data merge storage minecraft:master {version_num:3}

tellraw @a[tag=init_player] ["",{"text":"If you don't already have the 1.1.2 resource pack, you can download it","color":"aqua"},{"text":" "},{"text":"here","color":"green","bold":true,"underlined":false,"clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/rogue-craft/version/LuxoEroi"}}]