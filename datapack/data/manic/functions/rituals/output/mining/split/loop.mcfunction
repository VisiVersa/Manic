scoreboard players set #ingots manic.dummy 64
scoreboard players remove #ingots.stack manic.dummy 64
loot spawn ~ ~ ~ loot manic:technical/items/mining_ritual

execute unless score #ingots.stack manic.dummy matches 65.. run function manic:rituals/output/mining/split/finish
execute if score #ingots.stack manic.dummy matches 65.. run function manic:rituals/output/mining/split/loop
