execute positioned ^ ^ ^0.01 if block ~ ~ ~ minecraft:flower_pot align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=#manic:technical/block_bases,distance=..0.5,tag=smithed.block] run return run function manic:block/potted_corpseplant/place/summon
execute if entity @s[distance=..5] if block ^ ^ ^0.01 #nucleus:raycast_ignore positioned ^ ^ ^0.01 run function manic:block/potted_corpseplant/place/raycast
