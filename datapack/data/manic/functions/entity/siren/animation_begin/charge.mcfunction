data modify entity @s ArmorItems[3].tag.nucleus.damage_data.idle set value 20
tag @s add manic.siren.charge

scoreboard players set @s nucleus.frames 48
scoreboard players set @s manic.dummy2 0
function nucleus:entity/technical/animate

playsound manic:entity.siren.dash hostile @a[distance=..16]
particle minecraft:bubble ~ ~1 ~ 0.5 0.75 0.5 0 10 force
