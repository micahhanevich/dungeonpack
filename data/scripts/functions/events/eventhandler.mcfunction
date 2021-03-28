execute if score world curevent matches -1 run bossbar set minecraft:event name {"text":"null","color":"gray"}
execute if score world curevent matches -1 run bossbar set minecraft:event color white
execute if score world curevent matches -1 run bossbar set minecraft:event value 0
execute if score world curevent matches -1 run bossbar set minecraft:event max 1

execute if score world curevent matches -2 run setblock 929 162 869 redstone_block
execute if score world curevent matches -2 run setblock 929 162 869 andesite
execute if score world curevent matches -2 run scoreboard players set world curevent -1

execute if score world curevent matches 0 run function scripts:events/ping/pinghandler
execute if score world curevent matches 1..3 run function scripts:events/book/bookhandler

bossbar set minecraft:event players @a[scores={canseebossbar=1,class=0..}]
scoreboard players set @a[scores={canseebossbar=0,class=0..}] canseebossbar 1

execute if score world curevent matches ..-1 unless score world bossbarvisible matches 0 run bossbar set minecraft:event visible false
execute if score world curevent matches ..-1 unless score world bossbarvisible matches 0 run scoreboard players set world bossbarvisible 0
execute if score world curevent matches 0.. unless score world bossbarvisible matches 1 run bossbar set minecraft:event visible true
execute if score world curevent matches 0.. unless score world bossbarvisible matches 1 run scoreboard players set world bossbarvisible 1