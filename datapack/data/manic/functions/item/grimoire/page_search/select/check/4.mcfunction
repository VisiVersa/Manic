scoreboard players operation #insight manic.dummy = @s manic.insight
execute if entity @s[gamemode=creative] run scoreboard players set #insight manic.dummy 100

execute unless score #insight manic.dummy matches 3.. run scoreboard players set @s manic.grimoire.display 9999
execute if score #insight manic.dummy matches 3 run scoreboard players set @s manic.grimoire.display 7
execute if score #insight manic.dummy matches 4.. run scoreboard players set @s manic.grimoire.chapter 5
