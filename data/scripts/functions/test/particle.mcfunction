execute as @a[scores={walk=1..}] run scoreboard players set @s move 1
execute as @a[scores={sprint=1..}] run scoreboard players set @s move 1
execute as @a[scores={fly=1..}] run scoreboard players set @s move 1
execute as @a[scores={water_walk=1..}] run scoreboard players set @s move 1
execute as @a[scores={swim=1..}] run scoreboard players set @s move 1
execute as @a[scores={climb=1..}] run scoreboard players set @s move 1
execute as @a[scores={sneak=1..}] run scoreboard players set @s move 1
execute as @a[scores={fall=1..}] run scoreboard players set @s move 1
execute as @a[scores={float_walk=1..}] run scoreboard players set @s move 1
execute as @a[scores={aviate=1..}] run scoreboard players set @s move 1

execute as @e[type=minecraft:snowball] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force

execute as @e[type=player,tag=e_crown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0}] at @s run particle minecraft:end_rod ~.35 ~2.25 ~ 0 0 0 0 1 force
execute as @e[type=player,tag=e_crown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0}] at @s run particle minecraft:end_rod ~-.35 ~2.25 ~ 0 0 0 0 1 force
execute as @e[type=player,tag=e_crown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0}] at @s run particle minecraft:end_rod ~ ~2.25 ~.35 0 0 0 0 1 force
execute as @e[type=player,tag=e_crown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0}] at @s run particle minecraft:end_rod ~ ~2.25 ~-.35 0 0 0 0 1 force
execute as @e[type=player,tag=e_crown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0}] at @s run particle minecraft:end_rod ~.25 ~2.25 ~.25 0 0 0 0 1 force
execute as @e[type=player,tag=e_crown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0}] at @s run particle minecraft:end_rod ~-.25 ~2.25 ~-.25 0 0 0 0 1 force
execute as @e[type=player,tag=e_crown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0}] at @s run particle minecraft:end_rod ~-.25 ~2.25 ~.25 0 0 0 0 1 force
execute as @e[type=player,tag=e_crown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0}] at @s run particle minecraft:end_rod ~.25 ~2.25 ~-.25 0 0 0 0 1 force

execute as @e[tag=e_crown,type=!player] at @s run particle minecraft:end_rod ~.35 ~2.5 ~ 0 0 0 0 1 force
execute as @e[tag=e_crown,type=!player] at @s run particle minecraft:end_rod ~-.35 ~2.5 ~ 0 0 0 0 1 force
execute as @e[tag=e_crown,type=!player] at @s run particle minecraft:end_rod ~ ~2.5 ~.35 0 0 0 0 1 force
execute as @e[tag=e_crown,type=!player] at @s run particle minecraft:end_rod ~ ~2.5 ~-.35 0 0 0 0 1 force
execute as @e[tag=e_crown,type=!player] at @s run particle minecraft:end_rod ~.25 ~2.5 ~.25 0 0 0 0 1 force
execute as @e[tag=e_crown,type=!player] at @s run particle minecraft:end_rod ~-.25 ~2.5 ~-.25 0 0 0 0 1 force
execute as @e[tag=e_crown,type=!player] at @s run particle minecraft:end_rod ~-.25 ~2.5 ~.25 0 0 0 0 1 force
execute as @e[tag=e_crown,type=!player] at @s run particle minecraft:end_rod ~.25 ~2.5 ~-.25 0 0 0 0 1 force

scoreboard players add @e[tag=e_flamecrown] flamecrowntimer 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=1}] run particle soul_fire_flame ~0.5 ~2.1 ~0 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=1}] run particle soul_fire_flame ~0.476 ~2.1 ~0.155 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=2}] run particle soul_fire_flame ~0.405 ~2.1 ~0.294 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=2}] run particle soul_fire_flame ~0.294 ~2.1 ~0.405 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=3}] run particle soul_fire_flame ~0.155 ~2.1 ~0.476 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=3}] run particle soul_fire_flame ~0 ~2.1 ~0.5 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=3}] run particle soul_fire_flame ~-0.155 ~2.1 ~0.476 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=4}] run particle soul_fire_flame ~-0.294 ~2.1 ~0.405 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=4}] run particle soul_fire_flame ~-0.405 ~2.1 ~0.294 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=5}] run particle soul_fire_flame ~-0.476 ~2.1 ~0.155 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=5}] run particle soul_fire_flame ~-0.5 ~2.1 ~0 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=5}] run particle soul_fire_flame ~-0.476 ~2.1 ~-0.155 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=6}] run particle soul_fire_flame ~-0.405 ~2.1 ~-0.294 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=6}] run particle soul_fire_flame ~-0.294 ~2.1 ~-0.405 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=7}] run particle soul_fire_flame ~-0.155 ~2.1 ~-0.476 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=7}] run particle soul_fire_flame ~0 ~2.1 ~-0.5 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=7}] run particle soul_fire_flame ~0.155 ~2.1 ~-0.476 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=8}] run particle soul_fire_flame ~0.294 ~2.1 ~-0.405 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=8}] run particle soul_fire_flame ~0.405 ~2.1 ~-0.294 0 0 0 0.001 1
execute at @e[type=player,tag=e_flamecrown,nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]},scores={move=0,flamecrowntimer=9}] run particle soul_fire_flame ~0.476 ~2.1 ~-0.155 0 0 0 0.001 1

execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=1}] run particle soul_fire_flame ~0.5 ~2.1 ~0 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=1}] run particle soul_fire_flame ~0.476 ~2.1 ~0.155 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=2}] run particle soul_fire_flame ~0.405 ~2.1 ~0.294 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=2}] run particle soul_fire_flame ~0.294 ~2.1 ~0.405 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=3}] run particle soul_fire_flame ~0.155 ~2.1 ~0.476 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=3}] run particle soul_fire_flame ~0 ~2.1 ~0.5 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=3}] run particle soul_fire_flame ~-0.155 ~2.1 ~0.476 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=4}] run particle soul_fire_flame ~-0.294 ~2.1 ~0.405 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=4}] run particle soul_fire_flame ~-0.405 ~2.1 ~0.294 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=5}] run particle soul_fire_flame ~-0.476 ~2.1 ~0.155 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=5}] run particle soul_fire_flame ~-0.5 ~2.1 ~0 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=5}] run particle soul_fire_flame ~-0.476 ~2.1 ~-0.155 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=6}] run particle soul_fire_flame ~-0.405 ~2.1 ~-0.294 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=6}] run particle soul_fire_flame ~-0.294 ~2.1 ~-0.405 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=7}] run particle soul_fire_flame ~-0.155 ~2.1 ~-0.476 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=7}] run particle soul_fire_flame ~0 ~2.1 ~-0.5 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=7}] run particle soul_fire_flame ~0.155 ~2.1 ~-0.476 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=8}] run particle soul_fire_flame ~0.294 ~2.1 ~-0.405 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=8}] run particle soul_fire_flame ~0.405 ~2.1 ~-0.294 0 0 0 0.001 1
execute at @e[type=!player,tag=e_flamecrown,scores={flamecrowntimer=9}] run particle soul_fire_flame ~0.476 ~2.1 ~-0.155 0 0 0 0.001 1
scoreboard players reset @e[scores={flamecrowntimer=9}] flamecrowntimer
