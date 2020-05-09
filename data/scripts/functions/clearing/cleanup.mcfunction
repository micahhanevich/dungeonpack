kill @e[type=minecraft:arrow,nbt={inGround:1b}]

execute as @e[type=item,nbt=!{PickupDelay:200s}] run data merge entity @s {PickupDelay:200s}
kill @e[type=item,nbt={Age:100s}]

execute as @e[type=player,team=!players] run scoreboard players set @s woundtimer -1
team join players @e[type=player,team=!players]

execute as @e[type=player,scores={left=1}] run scoreboard players set @s lk 1
scoreboard players reset @a left
execute as @e[type=player,scores={lk=1}] run scoreboard players set woundtimer 0
execute as @e[type=player,scores={lk=1,class=0..},gamemode=adventure] run kill @s
scoreboard players reset * lk

scoreboard players set @a dmgdealt 0
scoreboard players set @a dmgdealt_abs 0
scoreboard players set @a dmgdealt_res 0
scoreboard players set @a dmgtaken 0
scoreboard players set @a dmgtaken_abs 0
scoreboard players set @a dmgtaken_res 0

scoreboard players set @a[scores={killDetect=1..}] killDetect 0

scoreboard players add world spawntimer 1
execute if score world spawntimer matches 1 run tp @e[tag=spawnpoint] 979 138.65 834 0 0
execute if score world spawntimer matches 2 run tp @e[tag=spawnpoint] 968 136 880 180 0
execute if score world spawntimer matches 3 run tp @e[tag=spawnpoint] 940 142 886 90 0
execute if score world spawntimer matches 4 run tp @e[tag=spawnpoint] 920 130 825 0 0
execute if score world spawntimer matches 4.. run scoreboard players set world spawntimer 0