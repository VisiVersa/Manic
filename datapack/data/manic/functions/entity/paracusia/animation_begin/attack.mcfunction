data modify entity @s ArmorItems[3].tag.nucleus.damage_data.idle set value 13
data modify entity @s ArmorItems[3].tag.nucleus.damage_data.moving set value 13
attribute @s minecraft:generic.movement_speed modifier add 8-3-6-2-12 manic.movement_speed -100 add

tag @s add manic.paracusia.attacking
scoreboard players set @s nucleus.frames 21
function nucleus:entity/technical/animate
playsound manic:entity.paracusia.attack hostile @a[distance=..16]
