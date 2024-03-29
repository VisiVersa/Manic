#1 - debug
execute if score @s manic.dummy matches 2 run function manic:block/anirrum_altar/interact/rituals/time/night
execute if score @s manic.dummy matches 3 run function manic:block/anirrum_altar/interact/rituals/time/day
execute if score @s manic.dummy matches 4 run weather rain 32000
execute if score @s manic.dummy matches 5 run weather thunder 24000
execute if score @s manic.dummy matches 6 run function manic:block/anirrum_altar/interact/rituals/tickspeed
#7 - prevent hunger
#8 - prevent effects
#9 - share insight
execute if score @s manic.dummy matches 10 as @e[predicate=manic:entity/can_split,distance=..30,sort=nearest,limit=8] at @s run function manic:block/anirrum_altar/interact/rituals/livestock/as_entity
execute if score @s manic.dummy matches 11 run function manic:block/anirrum_altar/interact/rituals/rift/main
#12 - unlock insight 3
execute if score @s manic.dummy matches 13..14 run data modify storage manic:storage root.temp.locate_pos set from entity @s Pos
execute if score @s manic.dummy matches 13 run function manic:entity/insomniac/spawning/main
execute if score @s manic.dummy matches 14 run function manic:entity/piglin_monk/spawning/main
execute if score @s manic.dummy matches 15 run function manic:block/anirrum_altar/interact/rituals/mining/set_data
execute if score @s manic.dummy matches 16 run loot spawn ~ ~ ~ loot manic:items/nightmare_shackles
execute if score @s manic.dummy matches 17 run loot spawn ~ ~ ~ loot manic:items/music_disc_7
execute if score @s manic.dummy matches 18 run loot spawn ~ ~ ~ loot manic:technical/items/blackstone_stalker
execute if score @s manic.dummy matches 19 run loot spawn ~ ~ ~ loot manic:items/grim_chasm
#20 - unlock insight 1
#21 - unlock insight 2
execute if score @s manic.dummy matches 22 run loot spawn ~ ~ ~ loot manic:items/occult_veil/zealot
execute if score @s manic.dummy matches 23 run loot spawn ~ ~ ~ loot manic:items/occult_veil/heretic
execute if score @s manic.dummy matches 24 run loot spawn ~ ~ ~ loot manic:items/occult_veil/zealot
execute if score @s manic.dummy matches 25 run loot spawn ~ ~ ~ loot manic:items/void_chasm
#26 - unlock insight 4
execute if score @s manic.dummy matches 27 run loot spawn ~ ~ ~ loot manic:items/grim_explorer_map
execute if score @s manic.dummy matches 28 run loot spawn ~ ~ ~ loot manic:items/elderskin_inlay
execute if score @s manic.dummy matches 29 run loot spawn ~ ~ ~ loot manic:items/grimstone_plinth
execute if score @s manic.dummy matches 30 run loot spawn ~ ~ ~ loot manic:items/grimstone_column
execute if score @s manic.dummy matches 31 run loot spawn ~ ~ ~ loot manic:items/eerie_idol
execute if score @s manic.dummy matches 32 run loot spawn ~ ~ ~ loot manic:items/grim_quill
execute if score @s manic.dummy matches 33 run loot spawn ~ ~ ~ loot manic:items/eldritch_sigil/imbuement/arcane
execute if score @s manic.dummy matches 34 run loot spawn ~ ~ ~ loot manic:items/eldritch_sigil/imbuement/regal
execute if score @s manic.dummy matches 35 run loot spawn ~ ~ ~ loot manic:items/eldritch_sigil/imbuement/heavy
execute if score @s manic.dummy matches 36 run loot spawn ~ ~ ~ loot manic:items/eldritch_sigil/imbuement/honed

execute positioned ~ ~-2 ~ run tag @e[type=item_display,tag=manic.anirrum_altar.performing,sort=nearest,limit=1] remove manic.anirrum_altar.performing
playsound manic:block.anirrum_altar.tentacle.spawn_item block @a
particle item potion{CustomModelData:8360137,CustomPotionColor:16777215} ~ ~0.25 ~ 0.45 0.5 0.45 0.08 20 force
particle dust_color_transition 0.102 1.000 0.000 2 0.114 0.212 0.176 ~ ~-0.5 ~ 0.45 0.65 0.45 2 15
particle end_rod ~ ~0.5 ~ 0 0 0 0.15 30 force
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function manic:entity/heretic/explosion/visuals/main
kill @s
