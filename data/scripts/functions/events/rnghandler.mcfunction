execute if data block 928 163 869 {Items:[{id:"minecraft:wooden_sword"}]} run scoreboard players set world curevent 0
execute if score world curevent matches 0 run tellraw @a ["",{"text":"\n{ ","color":"gray"},{"text":"The ","color":"yellow"},{"text":"Overseer ","color":"light_purple","italic":"true"},{"text":"watches... ","color":"yellow"},{"text":"}\n","color":"gray"}]

execute if data block 928 163 869 {Items:[{id:"minecraft:stone_sword"}]} run scoreboard players set world curevent -3
execute if score world curevent matches -3 run setblock 925 162 869 redstone_block
execute if score world curevent matches -3 run setblock 925 162 869 andesite
execute if score world curevent matches -3 run scoreboard players set world curevent -1