data modify entity @s ArmorItems[3].tag.nucleus.damage_data.idle set value 14
data modify entity @s ArmorItems[3].tag.nucleus.damage_data.moving set value 14
attribute @s minecraft:generic.movement_speed modifier add 8-3-6-2-12 manic.movement_speed -100 add

tag @s add manic.necromorph.spit
scoreboard players set @s nucleus.frames 33
function nucleus:entity/technical/animate
scoreboard players reset @s manic.dummy
