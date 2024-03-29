scoreboard players set #set_cooldown manic.dummy 0
tag @s add manic.spawning_spectres

execute summon marker run function manic:entity/technical/spectre/spawning/as_marker/initiate/main
execute summon marker run function manic:entity/technical/spectre/spawning/as_marker/initiate/main
execute if predicate nucleus:chance/0.5 summon marker run function manic:entity/technical/spectre/spawning/as_marker/initiate/main

execute if score @s manic.sanity matches ..1000 if predicate nucleus:chance/0.5 summon marker run function manic:entity/technical/spectre/spawning/as_marker/initiate/main
execute if score @s manic.lunacy matches 1.. summon marker run function manic:entity/technical/spectre/spawning/as_marker/initiate/main
execute if score @s manic.lunacy matches 1.. if predicate nucleus:chance/0.33 summon marker run function manic:entity/technical/spectre/spawning/as_marker/initiate/lunacy

tag @s remove manic.spawning_spectres
execute if score #set_cooldown manic.dummy matches 1 as @a[distance=..64] unless score @s manic.spectre_cooldown matches 150.. run scoreboard players set @s manic.spectre_cooldown 150
