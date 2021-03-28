execute if score world curevent matches 1 unless score world bossbarformat matches 1 run bossbar set minecraft:event name ["",{"text":"Knowledge of ","color":"gray"},{"text":"Earth","color":"white"}]
execute if score world curevent matches 1 unless score world bossbarformat matches 1 run bossbar set minecraft:event color white
execute if score world curevent matches 1 unless score world bossbarformat matches 1 run bossbar set minecraft:event style notched_12
execute if score world curevent matches 1 unless score world bossbarformat matches 1 run bossbar set minecraft:event max 5400
execute if score world curevent matches 1 unless score world bossbarformat matches 1 run scoreboard players set world bossbarformat 1
execute if score world curevent matches 2 unless score world bossbarformat matches 2 run bossbar set minecraft:event name ["",{"text":"Knowledge of ","color":"gray"},{"text":"Wind","color":"green"}]
execute if score world curevent matches 2 unless score world bossbarformat matches 2 run bossbar set minecraft:event color green
execute if score world curevent matches 2 unless score world bossbarformat matches 2 run bossbar set minecraft:event style notched_12
execute if score world curevent matches 2 unless score world bossbarformat matches 2 run bossbar set minecraft:event max 5400
execute if score world curevent matches 2 unless score world bossbarformat matches 2 run scoreboard players set world bossbarformat 2
execute if score world curevent matches 3 unless score world bossbarformat matches 3 run bossbar set minecraft:event name ["",{"text":"Knowledge of ","color":"gray"},{"text":"Fire","color":"red"}]
execute if score world curevent matches 3 unless score world bossbarformat matches 3 run bossbar set minecraft:event color red
execute if score world curevent matches 3 unless score world bossbarformat matches 3 run bossbar set minecraft:event style notched_12
execute if score world curevent matches 3 unless score world bossbarformat matches 3 run bossbar set minecraft:event max 5400
execute if score world curevent matches 3 unless score world bossbarformat matches 3 run scoreboard players set world bossbarformat 3

scoreboard players add world booktimer 1
execute if score world curevent matches 1 run particle minecraft:enchant 994 133 848 .45 1 .45 1 10 force
execute if score world curevent matches 2 run particle minecraft:enchant 995 133 842 .45 1 .45 1 10 force
execute if score world curevent matches 3 run particle minecraft:enchant 994 133 836 .45 1 .45 1 10 force
execute store result bossbar minecraft:event value run scoreboard players get world booktimer

execute as @a[scores={canseebossbar=1}] if score world booktimer matches 1 run playsound minecraft:entity.blaze.ambient master @s ~ ~ ~ 15 0
execute if score world booktimer matches 1 run setblock 920 129 817 minecraft:lectern[facing=south,has_book=true]

execute as @a[scores={canseebossbar=1}] if score world booktimer matches 5320 run playsound minecraft:block.anvil.land neutral @s ~ ~ ~ 15 2

execute as @a[scores={canseebossbar=1}] if score world booktimer matches 5355 run playsound minecraft:block.anvil.land neutral @s ~ ~ ~ 15 2

execute as @a[scores={canseebossbar=1}] if score world booktimer matches 5380 run playsound minecraft:block.anvil.land neutral @s ~ ~ ~ 15 1

execute if score world booktimer matches 5400.. run setblock 920 129 817 air
execute as @a[scores={canseebossbar=1}] if score world booktimer matches 5400.. run playsound minecraft:entity.zombie_villager.cure neutral @s ~ ~ ~ 15 2
execute if score world booktimer matches 5400.. run scoreboard players set world curevent -2
execute if score world booktimer matches 5400.. run scoreboard players set world booktimer 0