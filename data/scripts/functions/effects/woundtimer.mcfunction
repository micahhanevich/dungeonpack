execute as @e[type=player,scores={woundtimer=0..79}] at @s run particle minecraft:landing_lava ~ ~.5 ~ .25 .5 .25 .25 1 force
execute as @e[type=player,scores={woundtimer=80..}] at @s run particle minecraft:landing_lava ~ ~.5 ~ .25 .5 .25 .25 2 force
execute as @e[type=player,nbt={Attributes:[{Modifiers:[{UUID:[I; 0, 0, 0, 1]}]}]},scores={woundtimer=0}] run attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-0-1
execute as @e[type=player,nbt={Attributes:[{Modifiers:[{UUID:[I; 0, 0, 0, 1]}]}]},scores={woundtimer=0..}] run scoreboard players remove @s woundtimer 1
execute as @e[type=player,nbt=!{Attributes:[{Modifiers:[{UUID:[I; 0, 0, 0, 1]}]}]},scores={woundtimer=0..}] run scoreboard players set @s woundtimer -1