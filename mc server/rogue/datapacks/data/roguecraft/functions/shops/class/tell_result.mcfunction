$execute if data storage minecraft:master {shop_text:0} run title @s actionbar ["",{"translate":"roguecraft.class.name.$(upgrade)","bold":true,"color":"aqua"},{"text":": ","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"class_$(upgrade)"},"bold":true,"color":"aqua"},{"text":"/1, ","bold":true,"color":"aqua"},{"translate":"roguecraft.generic.cost","bold":true,"color":"aqua"},{"text":": $(cost)✦; ","bold":true,"color":"aqua"},{"translate":"roguecraft.generic.current_sp","bold":true,"color":"aqua"},{"text":": ","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"skillpoints"},"bold":true,"color":"aqua"},{"text":"✦","bold":true,"color":"aqua"}]
$execute if data storage minecraft:master {shop_text:1} run title @s actionbar ["",{"translate":"roguecraft.class.description.$(upgrade)","bold":true,"color":"aqua"}]