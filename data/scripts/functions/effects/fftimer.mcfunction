execute as @e[type=player,scores={fftimer=0..}] at @s run particle minecraft:white_ash ~ ~1 ~ .1 .5 .1 0 2 force
execute as @e[type=player,nbt={Attributes:[{Modifiers:[{UUID:[I; 0, 0, 0, 2]}]}]},scores={fftimer=0}] run attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-0-2
execute as @e[type=player,nbt={Attributes:[{Modifiers:[{UUID:[I; 0, 0, 0, 2]}]}]},scores={fftimer=0..}] run scoreboard players remove @s fftimer 1
execute as @e[type=player,nbt=!{Attributes:[{Modifiers:[{UUID:[I; 0, 0, 0, 2]}]}]},scores={fftimer=0..}] run scoreboard players set @s fftimer -1