$execute unless score @a[tag=mana_$(id),limit=1] class matches 1 unless entity @a[tag=mana_$(id),scores={ability_1=-1,ability_2=-1,ability_3=-1}] run function roguecraft:set_mana_bar with entity @s data

$execute if score @a[tag=mana_$(id),limit=1] class matches 1 unless entity @a[tag=mana_$(id),scores={ability_1=-1,ability_2=-1,ability_3=-1,ability_4=-1}] run function roguecraft:set_mana_bar with entity @s data

$execute unless score @a[tag=mana_$(id),limit=1] class matches -1 unless score @a[tag=mana_$(id),limit=1] class matches 1 run function roguecraft:set_mana_bar with entity @s data