execute if data block 926 163 869 {Items:[{id:"minecraft:iron_block"}]} run scoreboard players set world curevent 1
execute if score world curevent matches 1 run tellraw @a ["",{"text":"\n{ ","color":"gray"},{"text":"Knowledge ","color":"blue"},{"text":"of ","color":"yellow"},{"text":"Earth ","color":"white","bold":"true"},{"text":"approaches... ","color":"yellow"},{"text":"}\n","color":"gray"}]

execute if data block 926 163 869 {Items:[{id:"minecraft:emerald_block"}]} run scoreboard players set world curevent 2
execute if score world curevent matches 2 run tellraw @a ["",{"text":"\n{ ","color":"gray"},{"text":"Knowledge ","color":"blue"},{"text":"of ","color":"yellow"},{"text":"Wind ","color":"green","bold":"true"},{"text":"approaches... ","color":"yellow"},{"text":"}\n","color":"gray"}]

execute if data block 926 163 869 {Items:[{id:"minecraft:redstone_block"}]} run scoreboard players set world curevent 3
execute if score world curevent matches 3 run tellraw @a ["",{"text":"\n{ ","color":"gray"},{"text":"Knowledge ","color":"blue"},{"text":"of ","color":"yellow"},{"text":"Fire ","color":"red","bold":"true"},{"text":"approaches... ","color":"yellow"},{"text":"}\n","color":"gray"}]