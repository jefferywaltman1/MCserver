scoreboard players set global math_input1 1
scoreboard players set global math_input2 30
function uno:rng
scoreboard players operation global cycles = global math_output
scoreboard players set global math_input1 1
scoreboard players set global math_input2 20
function uno:rng
execute if score global math_output matches 1 run function uno:shuffle/cycle_1
execute if score global math_output matches 2 run function uno:shuffle/cycle_2
execute if score global math_output matches 3 run function uno:shuffle/cycle_3
execute if score global math_output matches 4 run function uno:shuffle/cycle_4
execute if score global math_output matches 5 run function uno:shuffle/cycle_5
execute if score global math_output matches 6 run function uno:shuffle/cycle_6
execute if score global math_output matches 7 run function uno:shuffle/cycle_7
execute if score global math_output matches 8 run function uno:shuffle/cycle_8
execute if score global math_output matches 9 run function uno:shuffle/cycle_9
execute if score global math_output matches 10 run function uno:shuffle/cycle_10
execute if score global math_output matches 11 run function uno:shuffle/cycle_11
execute if score global math_output matches 12 run function uno:shuffle/cycle_12
execute if score global math_output matches 13 run function uno:shuffle/cycle_13
execute if score global math_output matches 14 run function uno:shuffle/cycle_14
execute if score global math_output matches 15 run function uno:shuffle/cycle_15
execute if score global math_output matches 16 run function uno:shuffle/cycle_16
execute if score global math_output matches 17 run function uno:shuffle/cycle_17
execute if score global math_output matches 18 run function uno:shuffle/cycle_18
execute if score global math_output matches 19 run function uno:shuffle/cycle_19
execute if score global math_output matches 20 run function uno:shuffle/cycle_20

scoreboard players remove global1 cycles 1
execute if score global1 cycles matches 1.. run function uno:shuffle/start