$execute store result bossbar mana_$(id) max run scoreboard players get @a[tag=mana_$(id),limit=1] max_mana
$execute store result bossbar mana_$(id) value run scoreboard players get @a[tag=mana_$(id),limit=1] mana
$bossbar set minecraft:mana_$(id) name ["",{"score":{"name":"@a[tag=mana_$(id),limit=1]","objective":"mana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@a[tag=mana_$(id),limit=1]","objective":"max_mana"},"color":"aqua"},{"text":" "},{"translate":"roguecraft.generic.mana","color":"aqua"}]
$bossbar set mana_$(id) players @a[tag=mana_$(id),tag=!hub,tag=!victory]