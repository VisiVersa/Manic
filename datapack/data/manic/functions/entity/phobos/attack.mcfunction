data modify entity @s ArmorItems[3].tag.nucleus.damage_data.idle set value 13
data modify entity @s ArmorItems[3].tag.nucleus.damage_data.moving set value 13
attribute @s minecraft:generic.movement_speed modifier add 8-3-6-2-12 manic.movement_speed -100 add

scoreboard players set @s nucleus.frames 26
function nucleus:entity/technical/animate

tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,gamemode=!creative,tag=manic.player.rifting]
tag @s add manic.phobos.attacking

playsound manic:entity.phobos.attack hostile @a[distance=..16]
