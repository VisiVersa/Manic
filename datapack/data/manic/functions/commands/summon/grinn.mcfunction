summon vindicator ~ ~ ~ {Team:"smithed.prevent_aggression",Tags:["nucleus.entity","sanguine.entity.gives_blood","nucleus.zombie_entity","manic.second_clock","manic.tick","manic.entity","smithed.entity","manic.grinn","manic.entity.despawns","nucleus.entity.smite_damage","nucleus.entity.smite_damage.reduced","nucleus.iron_golem_target"],CustomName:'{"translate":"entity.manic.grinn"}',Silent:1b,DeathTime:19s,Offers:{Recipes:[]},ActiveEffects:[{Id:14b,Duration:100000,Amplifier:0b,ShowParticles:0b},{Id:12b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:potion",tag:{nucleus:{custom_model_data:{idle:8360043,moving:8360047,anim:{spawn:8360055,spawn_frames:50,despawn:8360053,despawn_frames:14}}},CustomModelData:8360055}}],DeathLootTable:"manic:entities/grinn",Attributes:[{Name:generic.movement_speed,Base:0.42},{Name:generic.max_health,Base:90},{Name:generic.armor,Base:9},{Name:generic.knockback_resistance,Base:0.8},{Name:generic.follow_range,Base:64},{Name:generic.damage,Base:0}],Health:90f,PersistenceRequired:1b}

execute if entity @s[type=player] run scoreboard players set #persistent manic.dummy 1
execute as @e[type=vindicator,tag=manic.grinn,sort=nearest,limit=1,tag=!manic.initiated] at @s run function manic:entity/grinn/init

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.manic.grinn"}]}
execute if entity @s[type=player] run function manic:entity/player/gamerules/no_feedback/main