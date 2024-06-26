# Sound Event
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{manic:{id:"corpseflute"}}}]},nbt=!{SelectedItem:{tag:{manic:{id:"corpseflute"}}}}] store result score @s manic.dummy run data get entity @s Inventory[{Slot:-106b}].tag.manic.corpseflute
execute if entity @s[nbt={SelectedItem:{tag:{manic:{id:"corpseflute"}}}}] store result score @s manic.dummy run data get entity @s SelectedItem.tag.manic.corpseflute
execute if score @s manic.dummy matches 1 run playsound manic:item.corpseflute.use.1 record @a[distance=..256] ~ ~ ~ 16
execute if score @s manic.dummy matches 2 run playsound manic:item.corpseflute.use.2 record @a[distance=..256] ~ ~ ~ 16
execute if score @s manic.dummy matches 3 run playsound manic:item.corpseflute.use.3 record @a[distance=..256] ~ ~ ~ 16
execute if score @s manic.dummy matches 4 run playsound manic:item.corpseflute.use.4 record @a[distance=..256] ~ ~ ~ 16
execute if score @s manic.dummy matches 5 run playsound manic:item.corpseflute.use.5 record @a[distance=..256] ~ ~ ~ 16
execute if score @s manic.dummy matches 6 run playsound manic:item.corpseflute.use.6 record @a[distance=..256] ~ ~ ~ 16

# Zombee Interaction
data modify storage manic:storage root.temp.UUID set from entity @s UUID
data modify storage manic:storage root.temp.Pos set from entity @s Pos
scoreboard players set #advancement manic.dummy 0
execute as @e[type=minecraft:wandering_trader,tag=manic.zombee,limit=5,distance=..24] run function manic:entity/zombee/player_tracking/set_player
execute if score #advancement manic.dummy matches 1 run advancement grant @s only manic:manic/zombee

# Misc
execute as @e[predicate=manic:entity/zombee_target,distance=..8,limit=5] at @s run function manic:item/corpseflute/as_mob
scoreboard players remove @s manic.sanity 50
scoreboard players set @s manic.corpseflute_delay 8
