advancement revoke @s only manic:technical/effects_changed/level_5
execute if score @s manic.lunacy matches 2250.. run return 0
execute unless score @s manic.lunacy matches 1.. if score @s manic.sanity matches ..750 run return 0

execute unless score @s manic.effect.prevent_effects.reapply matches 1.. run scoreboard players remove @s manic.sanity 750
execute unless score @s manic.effect.prevent_effects.reapply matches 1.. run scoreboard players remove @s manic.effect.prevent_effects 180
function manic:entity/player/effects/prevent_effects/update
