tag @s add manic.initiated
execute unless data storage manic:storage root.temp.transform if data entity @s ArmorItems[3].tag.nucleus.anim_data.spawn run function nucleus:entity/technical/animate/spawn
execute unless data storage manic:storage root.temp.transform if data entity @s ArmorItems[3].tag.nucleus.anim_data.spawn run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]
execute if data storage manic:storage root.temp.transform run data modify entity @s Health set from storage manic:storage root.temp.transform.health

execute if score #persistent manic.dummy matches 1 run function manic:entity/technical/spectre/nametag/persistent
scoreboard players set #persistent manic.dummy 0
execute if score #no_sanity_despawn manic.dummy matches 1 run tag @s add manic.no_sanity_despawn
scoreboard players set #no_sanity_despawn manic.dummy 0
execute if score #fire_resistant manic.dummy matches 1 run tag @s remove nucleus.burns_in_daylight
scoreboard players set #fire_resistant manic.dummy 0
execute if score #no_capture manic.dummy matches 1 run tag @s remove manic.snareable
execute if score #no_capture manic.dummy matches 1 run tag @s add manic.gives_no_sanity
scoreboard players set #no_capture manic.dummy 0
execute if score #reduced_health manic.dummy matches 1 store result entity @s Health int 0.75 run data get entity @s Health
scoreboard players set #reduced_health manic.dummy 0
execute if score #reinforcement manic.dummy matches 1 run tag @s add manic.reinforcement
scoreboard players set #reinforcement manic.dummy 0

data remove storage manic:storage root.temp
