summon item_display ~ ~ ~ {NoAI:1b,NoGravity:1b,Tags:["manic.entity","nucleus.entity","manic.second_clock","manic.chitter","manic.chitter.lunacy","smithed.entity"],item:{id:"minecraft:leather_boots",Count:1b,tag:{CustomModelData:8360038,display:{color:16777215}}},billboard:"center"}
execute if predicate nucleus:chance/0.75 as @e[type=minecraft:item_display,tag=manic.chitter,sort=nearest,limit=1] run function manic:entity/chitter/randomise
