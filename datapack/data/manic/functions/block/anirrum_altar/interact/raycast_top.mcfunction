execute if block ^ ^ ^0.01 minecraft:dispenser{Lock:"§manic.anirrum_altar\\uF001"} positioned ^ ^ ^0.01 align xyz positioned ~ ~-1 ~ as @e[dx=0,type=armor_stand,tag=manic.anirrum_altar,limit=1] positioned ~0.5 ~0.5 ~0.5 run function manic:block/anirrum_altar/interact/as_entity
execute if entity @s[distance=..5] unless block ^ ^ ^0.01 minecraft:dispenser{Lock:"§manic.anirrum_altar\\uF001"} positioned ^ ^ ^0.01 run function manic:block/anirrum_altar/interact/raycast_top