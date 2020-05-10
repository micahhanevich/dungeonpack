bossbar set minecraft:event players @a[scores={class=0..},gamemode=adventure]

scoreboard players add world pingtimer 1
execute store result bossbar minecraft:event value run scoreboard players get world pingtimer

execute if score world pingtimer matches 1799 run effect give @a[scores={class=0..},gamemode=adventure] minecraft:glowing 4 0 true
execute as @a[scores={class=0..},gamemode=adventure] at @s if score world pingtimer matches 1799 run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 3 0
execute as @a[scores={class=0..},gamemode=adventure] at @s if score world pingtimer matches 1799 run particle minecraft:flash ^ ^ ^1 0 0 0 0 1 force

execute if score world pingtimer matches 1700 run bossbar set minecraft:event color red
execute as @a[scores={class=0..},gamemode=adventure] if score world pingtimer matches 1700 run playsound minecraft:entity.arrow.hit_player neutral @s ~ ~ ~ 15 1
execute if score world pingtimer matches 1720 run bossbar set minecraft:event color yellow
execute if score world pingtimer matches 1740 run bossbar set minecraft:event color red
execute as @a[scores={class=0..},gamemode=adventure] if score world pingtimer matches 1740 run playsound minecraft:entity.arrow.hit_player neutral @s ~ ~ ~ 15 1
execute if score world pingtimer matches 1760 run bossbar set minecraft:event color yellow
execute if score world pingtimer matches 1780 run bossbar set minecraft:event color red
execute as @a[scores={class=0..},gamemode=adventure] if score world pingtimer matches 1780 run playsound minecraft:entity.arrow.hit_player neutral @s ~ ~ ~ 15 0
execute if score world pingtimer matches 1800 run bossbar set minecraft:event color yellow
execute if score world pingtimer matches 1800 run scoreboard players set world pingtimer 0