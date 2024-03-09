#Change (lower, upper) to (lower, range)
scoreboard players operation global math_input2 -= global math_input1
scoreboard players add global math_input2 1

#Summon two entities to work with
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"math_random_kcjbc\"}",Duration:10,Particle:take}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"math_random_kcjbc\"}",Duration:10,Particle:take}

#Generate a 31-bit random number by randomizing each bit
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 1
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 2
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 4
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 8
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 16
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 32
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 64

#Transfer random number and limit to given range
scoreboard players operation global math_output = @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,limit=1] math_input1
scoreboard players operation global math_output %= global math_input2
scoreboard players operation global math_output += global math_input1

#Restore input2
scoreboard players operation global math_input2 += global math_input1
scoreboard players remove global math_input2 1

kill @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1]

scoreboard players reset * math_input1
scoreboard players reset * math_input2