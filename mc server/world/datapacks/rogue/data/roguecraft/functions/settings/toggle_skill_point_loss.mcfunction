execute if data storage master {sp_loss:1} run data merge storage master {temp_sp_loss:1}
execute if data storage master {sp_loss:0} run data merge storage master {sp_loss:1}
execute if data storage master {temp_sp_loss:1} run data merge storage master {sp_loss:0}
data merge storage master {temp_sp_loss:0}

execute as @s if data storage master {sp_loss:0} run tellraw @s {"translate":"roguecraft.chat_messages.disable_sp_loss","color":"blue"}
execute as @s if data storage master {sp_loss:1} run tellraw @s {"translate":"roguecraft.chat_messages.enable_sp_loss","color":"blue"}

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5