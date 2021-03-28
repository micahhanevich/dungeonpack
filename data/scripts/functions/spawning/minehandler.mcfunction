execute as @e[type=player,scores={coalmine=1..}] at @s run loot give @s loot scripts:mining/coal_ore
execute as @e[type=player,scores={coalmine=1..}] at @s store result score @s gain_coal run clear @s coal
execute as @e[type=player,scores={coalmine=1..}] at @s store result score @s gain_stone run clear @s cobblestone

execute as @e[type=player,scores={coalmine=1..,gain_coal=1..}] at @s run scoreboard players operation @s r_coal += @s gain_coal
execute as @e[type=player,scores={coalmine=1..,gain_coal=1..}] at @s run playsound minecraft:entity.item.pickup block @s ~ ~ ~ 5 2
execute as @e[type=player,scores={coalmine=1..,gain_stone=1..}] at @s run scoreboard players operation @s r_stone += @s gain_stone
execute as @e[type=player,scores={coalmine=1..,gain_stone=1..}] at @s run playsound minecraft:entity.item.pickup block @s ~ ~ ~ 5 1
execute as @e[type=player,scores={coalmine=1..,gain_coal=1..}] at @s run tellraw @s ["",{"text":"Coal Vein ","color":"dark_gray","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_coal"},"color":"red","italic":"false"},{"text":" Coal ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_coal"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]
execute as @e[type=player,scores={coalmine=1..,gain_stone=1..}] at @s run tellraw @s ["",{"text":"Coal Vein ","color":"dark_gray","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_stone"},"color":"red","italic":"false"},{"text":" Stone ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_stone"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]
execute as @e[type=player,scores={coalmine=1..,gain_coal=1..}] at @s run scoreboard players set @s gain_coal 0
execute as @e[type=player,scores={coalmine=1..,gain_stone=1..}] at @s run scoreboard players set @s gain_stone 0

execute as @e[tag=coalpoint,scores={oretimer=0}] at @s if block ~ ~ ~ air run scoreboard players add @s times_mined 1
scoreboard players add @a[scores={coalmine=1..}] times_mined 1
execute as @e[tag=coalpoint,scores={oretimer=0}] at @s if block ~ ~ ~ air run scoreboard players set @p[scores={coalmine=1..}] coalmine 0

execute as @e[tag=coalpoint] at @s if block ~ ~ ~ air run setblock ~ ~ ~ cobblestone
execute as @e[tag=coalpoint] at @s if block ~ ~ ~ cobblestone run scoreboard players add @s oretimer 1
execute as @e[tag=coalpoint,scores={oretimer=2400..}] at @s if block ~ ~ ~ cobblestone run setblock ~ ~ ~ coal_ore
execute as @e[tag=coalpoint,scores={oretimer=2400..}] at @s run scoreboard players set @s oretimer 0



execute as @e[type=player,scores={ironmine=1..}] at @s run loot give @s loot scripts:mining/iron_ore
execute as @e[type=player,scores={ironmine=1..}] at @s store result score @s gain_iron run clear @s iron_nugget
execute as @e[type=player,scores={ironmine=1..}] at @s store result score @s gain_coal run clear @s coal
execute as @e[type=player,scores={ironmine=1..}] at @s store result score @s gain_stone run clear @s cobblestone

execute as @e[type=player,scores={ironmine=1..,gain_iron=1..}] at @s run scoreboard players operation @s r_iron += @s gain_iron
execute as @e[type=player,scores={ironmine=1..,gain_iron=1..}] at @s run playsound minecraft:entity.item.pickup block @s ~ ~ ~ 5 2
execute as @e[type=player,scores={ironmine=1..,gain_coal=1..}] at @s run scoreboard players operation @s r_coal += @s gain_coal
execute as @e[type=player,scores={ironmine=1..,gain_coal=1..}] at @s run playsound minecraft:entity.item.pickup block @s ~ ~ ~ 5 2
execute as @e[type=player,scores={ironmine=1..,gain_stone=1..}] at @s run scoreboard players operation @s r_stone += @s gain_stone
execute as @e[type=player,scores={ironmine=1..,gain_stone=1..}] at @s run playsound minecraft:entity.item.pickup block @s ~ ~ ~ 5 1
execute as @e[type=player,scores={ironmine=1..,gain_iron=1..}] at @s run tellraw @s ["",{"text":"Iron Vein ","color":"white","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_iron"},"color":"red","italic":"false"},{"text":" Iron ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_iron"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]
execute as @e[type=player,scores={ironmine=1..,gain_coal=1..}] at @s run tellraw @s ["",{"text":"Iron Vein ","color":"white","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_coal"},"color":"red","italic":"false"},{"text":" Coal ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_coal"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]
execute as @e[type=player,scores={ironmine=1..,gain_stone=1..}] at @s run tellraw @s ["",{"text":"Iron Vein ","color":"white","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_stone"},"color":"red","italic":"false"},{"text":" Stone ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_stone"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]
execute as @e[type=player,scores={ironmine=1..,gain_iron=1..}] at @s run scoreboard players set @s gain_iron 0
execute as @e[type=player,scores={ironmine=1..,gain_coal=1..}] at @s run scoreboard players set @s gain_coal 0
execute as @e[type=player,scores={ironmine=1..,gain_stone=1..}] at @s run scoreboard players set @s gain_stone 0

execute as @e[tag=ironpoint,scores={oretimer=0}] at @s if block ~ ~ ~ air run scoreboard players add @s times_mined 1
scoreboard players add @a[scores={ironmine=1..}] times_mined 1
execute as @e[tag=ironpoint,scores={oretimer=0}] at @s if block ~ ~ ~ air run scoreboard players set @p[scores={ironmine=1..}] ironmine 0

execute as @e[tag=ironpoint] at @s if block ~ ~ ~ air run setblock ~ ~ ~ cobblestone
execute as @e[tag=ironpoint] at @s if block ~ ~ ~ cobblestone run scoreboard players add @s oretimer 1
execute as @e[tag=ironpoint,scores={oretimer=4800..}] at @s if block ~ ~ ~ cobblestone run setblock ~ ~ ~ iron_ore
execute as @e[tag=ironpoint,scores={oretimer=4800..}] at @s run scoreboard players set @s oretimer 0



execute as @e[type=player,scores={goldmine=1..}] at @s run loot give @s loot scripts:mining/gold_ore
execute as @e[type=player,scores={goldmine=1..}] at @s store result score @s gain_gold run clear @s gold_nugget
execute as @e[type=player,scores={goldmine=1..}] at @s store result score @s gain_coal run clear @s coal
execute as @e[type=player,scores={goldmine=1..}] at @s store result score @s gain_stone run clear @s cobblestone

execute as @e[type=player,scores={goldmine=1..,gain_gold=1..}] at @s run scoreboard players operation @s r_gold += @s gain_gold
execute as @e[type=player,scores={goldmine=1..,gain_gold=1..}] at @s run playsound minecraft:entity.item.pickup block @s ~ ~ ~ 5 2
execute as @e[type=player,scores={goldmine=1..,gain_coal=1..}] at @s run scoreboard players operation @s r_coal += @s gain_coal
execute as @e[type=player,scores={goldmine=1..,gain_coal=1..}] at @s run playsound minecraft:entity.item.pickup block @s ~ ~ ~ 5 2
execute as @e[type=player,scores={goldmine=1..,gain_stone=1..}] at @s run scoreboard players operation @s r_stone += @s gain_stone
execute as @e[type=player,scores={goldmine=1..,gain_stone=1..}] at @s run playsound minecraft:entity.item.pickup block @s ~ ~ ~ 5 1
execute as @e[type=player,scores={goldmine=1..,gain_gold=1..}] at @s run tellraw @s ["",{"text":"Gold Vein ","color":"gold","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_gold"},"color":"red","italic":"false"},{"text":" Gold ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_gold"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]
execute as @e[type=player,scores={goldmine=1..,gain_coal=1..}] at @s run tellraw @s ["",{"text":"Gold Vein ","color":"gold","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_coal"},"color":"red","italic":"false"},{"text":" Coal ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_coal"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]
execute as @e[type=player,scores={goldmine=1..,gain_stone=1..}] at @s run tellraw @s ["",{"text":"Gold Vein ","color":"gold","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_stone"},"color":"red","italic":"false"},{"text":" Stone ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_stone"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]
execute as @e[type=player,scores={goldmine=1..,gain_gold=1..}] at @s run scoreboard players set @s gain_gold 0
execute as @e[type=player,scores={goldmine=1..,gain_coal=1..}] at @s run scoreboard players set @s gain_coal 0
execute as @e[type=player,scores={goldmine=1..,gain_stone=1..}] at @s run scoreboard players set @s gain_stone 0

execute as @e[tag=goldpoint,scores={oretimer=0}] at @s if block ~ ~ ~ air run scoreboard players add @s times_mined 1
scoreboard players add @a[scores={goldmine=1..}] times_mined 1
execute as @e[tag=goldpoint,scores={oretimer=0}] at @s if block ~ ~ ~ air run scoreboard players set @p[scores={goldmine=1..}] goldmine 0

execute as @e[tag=goldpoint] at @s if block ~ ~ ~ air run setblock ~ ~ ~ cobblestone
execute as @e[tag=goldpoint] at @s if block ~ ~ ~ cobblestone run scoreboard players add @s oretimer 1
execute as @e[tag=goldpoint,scores={oretimer=6000..}] at @s if block ~ ~ ~ cobblestone run setblock ~ ~ ~ gold_ore
execute as @e[tag=goldpoint,scores={oretimer=6000..}] at @s run scoreboard players set @s oretimer 0



execute as @e[type=player,scores={emeraldmine=1..}] at @s run loot give @s loot scripts:mining/emerald_ore
execute as @e[type=player,scores={emeraldmine=1..}] at @s store result score @s gain_emerald run clear @s emerald
execute as @e[type=player,scores={emeraldmine=1..}] at @s store result score @s gain_stone run clear @s cobblestone

execute as @e[type=player,scores={emeraldmine=1..,gain_emerald=1..}] at @s run scoreboard players operation @s r_emerald += @s gain_emerald
execute as @e[type=player,scores={emeraldmine=1..,gain_emerald=1..}] at @s run playsound minecraft:entity.item.pickup block @s ~ ~ ~ 5 2
execute as @e[type=player,scores={emeraldmine=1..,gain_stone=1..}] at @s run scoreboard players operation @s r_stone += @s gain_stone
execute as @e[type=player,scores={emeraldmine=1..,gain_stone=1..}] at @s run playsound minecraft:entity.item.pickup block @s ~ ~ ~ 5 1
execute as @e[type=player,scores={emeraldmine=1..,gain_emerald=1..}] at @s run tellraw @s ["",{"text":"Emerald Vein ","color":"green","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_emerald"},"color":"red","italic":"false"},{"text":" Emerald ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_emerald"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]
execute as @e[type=player,scores={emeraldmine=1..,gain_stone=1..}] at @s run tellraw @s ["",{"text":"Emerald Vein ","color":"green","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_stone"},"color":"red","italic":"false"},{"text":" Stone ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_stone"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]
execute as @e[type=player,scores={emeraldmine=1..,gain_emerald=1..}] at @s run scoreboard players set @s gain_emerald 0
execute as @e[type=player,scores={emeraldmine=1..,gain_stone=1..}] at @s run scoreboard players set @s gain_stone 0

scoreboard players add @a[scores={emeraldmine=1..}] times_mined 1
execute as @e[tag=emeraldpoint,scores={oretimer=0}] at @s if block ~ ~ ~ air run scoreboard players set @p[scores={emeraldmine=1..}] emeraldmine 0

execute as @e[tag=emeraldpoint] at @s if block ~ ~ ~ air run setblock ~ ~ ~ cobblestone
execute as @e[tag=emeraldpoint] at @s if block ~ ~ ~ cobblestone run scoreboard players add @s oretimer 1
execute as @e[tag=emeraldpoint,scores={oretimer=9600..}] at @s if block ~ ~ ~ cobblestone run setblock ~ ~ ~ emerald_ore
execute as @e[tag=emeraldpoint,scores={oretimer=9600..}] at @s run scoreboard players set @s oretimer 0



execute as @e[type=player,scores={diamondmine=1..}] at @s run loot give @s loot scripts:mining/diamond_ore
execute as @e[type=player,scores={diamondmine=1..}] at @s store result score @s gain_diamond run clear @s diamond
execute as @e[type=player,scores={diamondmine=1..}] at @s store result score @s gain_stone run clear @s cobblestone

execute as @e[type=player,scores={diamondmine=1..,gain_diamond=1..}] at @s run scoreboard players operation @s r_diamond += @s gain_diamond
execute as @e[type=player,scores={diamondmine=1..,gain_diamond=1..}] at @s run playsound minecraft:entity.item.pickup block @s ~ ~ ~ 5 2
execute as @e[type=player,scores={diamondmine=1..,gain_stone=1..}] at @s run scoreboard players operation @s r_stone += @s gain_stone
execute as @e[type=player,scores={diamondmine=1..,gain_stone=1..}] at @s run playsound minecraft:entity.item.pickup block @s ~ ~ ~ 5 1
execute as @e[type=player,scores={diamondmine=1..,gain_diamond=1..}] at @s run tellraw @s ["",{"text":"Diamond Vein ","color":"aqua","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_diamond"},"color":"red","italic":"false"},{"text":" Diamond ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_diamond"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]
execute as @e[type=player,scores={diamondmine=1..,gain_stone=1..}] at @s run tellraw @s ["",{"text":"Diamond Vein ","color":"aqua","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_stone"},"color":"red","italic":"false"},{"text":" Stone ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_stone"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]
execute as @e[type=player,scores={diamondmine=1..,gain_diamond=1..}] at @s run scoreboard players set @s gain_diamond 0
execute as @e[type=player,scores={diamondmine=1..,gain_stone=1..}] at @s run scoreboard players set @s gain_stone 0

execute as @e[tag=diamondpoint,scores={oretimer=0}] at @s if block ~ ~ ~ air run scoreboard players add @s times_mined 1
scoreboard players add @a[scores={diamondmine=1..}] times_mined 1
execute as @e[tag=diamondpoint,scores={oretimer=0}] at @s if block ~ ~ ~ air run scoreboard players set @p[scores={diamondmine=1..}] diamondmine 0

execute as @e[tag=diamondpoint] at @s if block ~ ~ ~ air run setblock ~ ~ ~ cobblestone
execute as @e[tag=diamondpoint] at @s if block ~ ~ ~ cobblestone run scoreboard players add @s oretimer 1
execute as @e[tag=diamondpoint,scores={oretimer=9600..}] at @s if block ~ ~ ~ cobblestone run setblock ~ ~ ~ diamond_ore
execute as @e[tag=diamondpoint,scores={oretimer=9600..}] at @s run scoreboard players set @s oretimer 0



execute as @e[tag=redstonepoint,scores={oretimer=0}] at @s if block ~ ~ ~ air run scoreboard players add @p[scores={redstonemine=1..}] r_redstone 1
execute as @e[tag=redstonepoint,scores={oretimer=0}] at @s if block ~ ~ ~ air run give @p[scores={redstonemine=1..}] redstone 1
execute as @e[tag=redstonepoint,scores={oretimer=0}] at @s if block ~ ~ ~ air run scoreboard players add @s times_mined 1
scoreboard players add @a[scores={redstonemine=1..}] times_mined 1
execute as @e[tag=redstonepoint,scores={oretimer=0}] at @s if block ~ ~ ~ air run scoreboard players set @p[scores={redstonemine=1..}] redstonemine 0

execute as @e[tag=redstonepoint] at @s if block ~ ~ ~ air run setblock ~ ~ ~ cobblestone
execute as @e[tag=redstonepoint] at @s if block ~ ~ ~ cobblestone run scoreboard players add @s oretimer 1
execute as @e[tag=redstonepoint,scores={oretimer=5200..}] at @s if block ~ ~ ~ cobblestone run setblock ~ ~ ~ redstone_ore
execute as @e[tag=redstonepoint,scores={oretimer=5200..}] at @s run scoreboard players set @s oretimer 0

scoreboard players set @a coalmine 0
scoreboard players set @a ironmine 0
scoreboard players set @a goldmine 0
scoreboard players set @a emeraldmine 0
scoreboard players set @a diamondmine 0