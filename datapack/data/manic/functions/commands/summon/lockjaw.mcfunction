summon vindicator ~ ~ ~ {Silent:1b,DeathTime:19,DeathLootTable:"manic:entities/lockjaw",Team:"smithed.prevent_aggression",Health:100f,Tags:["smithed.entity","nucleus.entity","sanguine.entity.gives_blood","nucleus.zombie_entity","manic.entity","manic.lockjaw","manic.second_clock","manic.tick","manic.entity.spectre","manic.entity.despawns","nucleus.entity.smite_damage","nucleus.entity.smite_damage.reduced","nucleus.iron_golem_target"],CustomName:'{"translate":"entity.manic.lockjaw"}',ArmorItems:[{},{},{},{id:'minecraft:potion',Count:1b,tag:{CustomModelData:8360057,nucleus:{custom_model_data:{idle:8360057,moving:8360059,anim:{spawn:8360067,spawn_frames:65}}},CustomPotionColor:16777215}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.knockback_resistance,Base:1.0},{Name:generic.movement_speed,Base:0.4},{Name:generic.attack_damage,Base:10},{Name:generic.attack_knockback,Base:1.0},{Name:generic.armor,Base:10},{Name:generic.follow_range,Base:64}],PersistenceRequired:1b}

execute if entity @s[type=player] run scoreboard players set #persistent manic.dummy 1
execute as @e[type=vindicator,tag=manic.lockjaw,sort=nearest,limit=1,tag=!manic.initiated] at @s run function manic:entity/lockjaw/init

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.manic.lockjaw"}]}
execute if entity @s[type=player] run function manic:entity/player/gamerules/no_feedback/main