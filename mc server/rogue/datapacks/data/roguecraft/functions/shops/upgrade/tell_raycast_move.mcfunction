# Move forward according to step size
tp @s ^ ^ ^0.5

# Check for collisions
execute if entity @e[type=marker,distance=..0.5,tag=upgrade_shop] as @a[tag=current_player] run function roguecraft:shops/upgrade/tell_result with entity @e[type=marker,distance=..0.5,tag=upgrade_shop,limit=1] data
execute if entity @e[type=marker,distance=..0.5,tag=upgrade_shop] run tag @s add hit

# Decrease the number of steps remaining
scoreboard players remove @s steps 1

# Recurse until we hit something or run out of steps
kill @s[tag=hit]
execute as @s[tag=!hit,scores={steps=1..}] at @s run function roguecraft:shops/upgrade/tell_raycast_move