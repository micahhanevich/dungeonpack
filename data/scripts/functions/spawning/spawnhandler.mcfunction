execute as @e[type=!player,tag=mob] store result score @s mobhealth run data get entity @s Health 1
execute as @e[type=!player,tag=mob,tag=!mobmaxhealth] store result score @s mobmaxhealth run attribute @s minecraft:generic.max_health get
execute as @e[type=!player,tag=mob,tag=!mobmaxhealth,nbt=!{Attributes:[{Name:"minecraft:generic.max_health"}]}] run scoreboard players set @s mobmaxhealth 20
execute as @e[type=!player,tag=mob,tag=!mobmaxhealth,nbt=!{Attributes:[{Name:"minecraft:generic.max_health"}]}] run data merge entity @s {Attributes:[{Name:"minecraft:generic.max_health",Base:20d}]}
tag @e[type=!player,tag=mob,tag=!mobmaxhealth] add mobmaxhealth


execute as @e[type=!player,tag=mob,tag=mobmaxhealth,tag=!mobhpinterval] store result score @s mobhpinterval run scoreboard players get @s mobmaxhealth
execute as @e[type=!player,tag=mob,tag=!boss,tag=mobmaxhealth,tag=!mobhpinterval] run scoreboard players operation @s mobhpinterval /= world ten
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=!mobhpinterval] run scoreboard players operation @s mobhpinterval /= world twenty
tag @e[type=!player,tag=mob,tag=mobmaxhealth,tag=!mobhpinterval] add mobhpinterval

execute as @e[type=!player,tag=mob,tag=mobmaxhealth,tag=mobhpinterval] store result score @s calc run scoreboard players get @s mobmaxhealth
execute as @e[type=!player,tag=mob,tag=mobmaxhealth,tag=mobhpinterval] store result score @s mobcurhpint run scoreboard players operation @s calc -= @s mobhealth
execute as @e[type=!player,tag=mob,tag=mobmaxhealth,tag=mobhpinterval] store result score @s mobcurhpint run scoreboard players operation @s mobcurhpint /= @s mobhpinterval


execute as @e[type=!player,tag=mob,tag=mobmaxhealth,tag=mobhpinterval] if score @s lastHP < @s mobhealth run scoreboard players set @s updateHP 1
execute as @e[type=!player,tag=mob,tag=mobmaxhealth,tag=mobhpinterval] if score @s lastHP > @s mobhealth run scoreboard players set @s updateHP 1

execute as @e[type=!player,tag=mob,tag=mobmaxhealth,tag=mobhpinterval] store result score @s lastHP run scoreboard players get @s mobhealth


execute as @e[type=!player,tag=mob,tag=!boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=0,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"[","color":"dark_gray","bold":false,"italic":false},{"text":"||||||||||","color":"green","bold":true,"italic":false},{"text":"]","color":"dark_gray","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=!boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=1,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"[","color":"dark_gray","bold":false,"italic":false},{"text":"|||||||||","color":"green","bold":true,"italic":false},{"text":"|","color":"black","bold":true,"italic":false},{"text":"]","color":"dark_gray","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=!boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=2,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"[","color":"dark_gray","bold":false,"italic":false},{"text":"||||||||","color":"green","bold":true,"italic":false},{"text":"||","color":"black","bold":true,"italic":false},{"text":"]","color":"dark_gray","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=!boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=3,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"[","color":"dark_gray","bold":false,"italic":false},{"text":"|||||||","color":"yellow","bold":true,"italic":false},{"text":"|||","color":"black","bold":true,"italic":false},{"text":"]","color":"dark_gray","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=!boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=4,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"[","color":"dark_gray","bold":false,"italic":false},{"text":"||||||","color":"yellow","bold":true,"italic":false},{"text":"||||","color":"black","bold":true,"italic":false},{"text":"]","color":"dark_gray","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=!boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=5,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"[","color":"dark_gray","bold":false,"italic":false},{"text":"|||||","color":"gold","bold":true,"italic":false},{"text":"|||||","color":"black","bold":true,"italic":false},{"text":"]","color":"dark_gray","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=!boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=6,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"[","color":"dark_gray","bold":false,"italic":false},{"text":"||||","color":"gold","bold":true,"italic":false},{"text":"||||||","color":"black","bold":true,"italic":false},{"text":"]","color":"dark_gray","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=!boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=7,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"[","color":"dark_gray","bold":false,"italic":false},{"text":"|||","color":"red","bold":true,"italic":false},{"text":"|||||||","color":"black","bold":true,"italic":false},{"text":"]","color":"dark_gray","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=!boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=8,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"[","color":"dark_gray","bold":false,"italic":false},{"text":"||","color":"red","bold":true,"italic":false},{"text":"||||||||","color":"black","bold":true,"italic":false},{"text":"]","color":"dark_gray","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=!boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=9,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"[","color":"dark_gray","bold":false,"italic":false},{"text":"|","color":"dark_red","bold":true,"italic":false},{"text":"|||||||||","color":"black","bold":true,"italic":false},{"text":"]","color":"dark_gray","bold":false,"italic":false}]'}


execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=0,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"||||||||||||||||||||","color":"green","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=1,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"|||||||||||||||||||","color":"green","bold":true,"italic":false},{"text":"|","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=2,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"||||||||||||||||||","color":"green","bold":true,"italic":false},{"text":"||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=3,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"|||||||||||||||||","color":"green","bold":true,"italic":false},{"text":"|||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=4,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"||||||||||||||||","color":"green","bold":true,"italic":false},{"text":"||||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=5,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"|||||||||||||||","color":"yellow","bold":true,"italic":false},{"text":"|||||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=6,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"||||||||||||||","color":"yellow","bold":true,"italic":false},{"text":"||||||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=7,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"|||||||||||||","color":"yellow","bold":true,"italic":false},{"text":"|||||||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=8,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"||||||||||||","color":"yellow","bold":true,"italic":false},{"text":"||||||||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=9,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"|||||||||||","color":"yellow","bold":true,"italic":false},{"text":"|||||||||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}

execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=8,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"||||||||||","color":"gold","bold":true,"italic":false},{"text":"||||||||||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=11,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"|||||||||","color":"gold","bold":true,"italic":false},{"text":"|||||||||||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=12,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"||||||||","color":"gold","bold":true,"italic":false},{"text":"||||||||||||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=13,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"|||||||","color":"red","bold":true,"italic":false},{"text":"|||||||||||||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=14,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"||||||","color":"red","bold":true,"italic":false},{"text":"||||||||||||||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=15,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"|||||","color":"red","bold":true,"italic":false},{"text":"|||||||||||||||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=16,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"||||","color":"dark_red","bold":true,"italic":false},{"text":"||||||||||||||||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=17,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"|||","color":"dark_red","bold":true,"italic":false},{"text":"|||||||||||||||||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=18,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"||","color":"dark_red","bold":true,"italic":false},{"text":"||||||||||||||||||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}
execute as @e[type=!player,tag=mob,tag=boss,tag=mobmaxhealth,tag=mobhpinterval,scores={mobcurhpint=19,updateHP=1..}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"<(","color":"gold","bold":false,"italic":false},{"text":"|","color":"dark_red","bold":true,"italic":false},{"text":"|||||||||||||||||||","color":"black","bold":true,"italic":false},{"text":")>","color":"gold","bold":false,"italic":false}]'}


tag @e[type=!player,tag=mob,tag=mobmaxhealth,scores={mobmaxhealth=0}] remove mobmaxhealth
tag @e[type=!player,tag=mob,tag=mobhpinterval,scores={mobhpinterval=0}] remove mobhpinterval

scoreboard players set @e[scores={updateHP=1..}] updateHP 0


execute as @e[tag=dustybones] at @s unless block 915 183 846 minecraft:redstone_lamp[lit=true] if block ~ ~ ~ minecraft:water run kill @s

execute as @e[tag=mobpoint] run scoreboard players add @s mobspawntimer 1


execute as @e[tag=dustybonespoint] at @s run particle minecraft:flame ~ ~1.25 ~ .5 .35 .5 .01 1 force

scoreboard players set world dustybonescount 0
execute as @e[tag=dustybones] run scoreboard players add world dustybonescount 1

execute as @e[tag=dustybonespoint,scores={mobspawntimer=1800..}] run scoreboard players set @s mobspawntimer 0

execute as @e[tag=dustybonespoint,scores={mobspawntimer=0}] at @s unless score world dustybonescount < world dustybonesmax run scoreboard players set @s mobspawntimer 1600
execute as @e[tag=dustybonespoint,scores={mobspawntimer=0}] at @s run summon stray ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Health:20f,Tags:["mob","dustybones"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:255s}]}},{},{},{}],HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;-1430706354,1980385565,-2070991511,-671622829],Slot:"mainhand"}]}},{}],HandDropChances:[-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.attack_damage,Base:2.5},{Name:generic.armor,Base:2}]}


execute as @e[tag=spiderpoint] at @s run particle minecraft:enchant ~ ~1.25 ~ .5 .35 .5 .01 1 force

scoreboard players set world spidercount 0
execute as @e[tag=libraryspider] run scoreboard players add world spidercount 1

execute as @e[tag=spiderpoint,scores={mobspawntimer=3600..}] run scoreboard players set @s mobspawntimer 0

execute as @e[tag=spiderpoint,scores={mobspawntimer=0}] at @s unless score world spidercount < world libraryspidermax run scoreboard players set @s mobspawntimer 3400
execute as @e[tag=spiderpoint,scores={mobspawntimer=0}] at @s run summon spider ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,Health:35f,Tags:["mob","libraryspider"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:255s}]}},{},{},{}],Attributes:[{Name:generic.max_health,Base:35},{Name:generic.attack_damage,Base:6},{Name:generic.armor,Base:4},{Name:generic.knockback_resistance,Base:1}]}



execute as @e[tag=siegepoint] at @s if block 915 183 846 minecraft:redstone_lamp[lit=true] run particle minecraft:dragon_breath ~ ~2 ~ 1.2 .55 1.2 0.01 1 force

execute as @e[tag=siegepoint] at @s unless block 915 183 846 minecraft:redstone_lamp[lit=true] run kill @e[type=ravager]

scoreboard players set world siegebeastcount 0
execute as @e[tag=siegebeast] run scoreboard players add world siegebeastcount 1

execute as @e[tag=siegepoint,scores={mobspawntimer=10000..}] run scoreboard players set @s mobspawntimer 0

execute as @e[tag=siegepoint,scores={mobspawntimer=0}] at @s unless block 915 183 846 minecraft:redstone_lamp[lit=true] run scoreboard players set @s mobspawntimer 9950
execute as @e[tag=siegepoint,scores={mobspawntimer=0}] at @s if entity @e[tag=siegebeast] run scoreboard players set @s mobspawntimer 9000
execute as @e[tag=siegepoint,scores={mobspawntimer=0}] at @s run summon ravager ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,Health:50f,PatrolLeader:0b,Patrolling:0b,HasRaidGoal:0b,CanJoinRaid:0b,Tags:["mob","boss","siegebeast"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:255s}]}},{},{},{}],ArmorDropChances:[-327.670F,0.085F,0.085F,0.085F],ActiveEffects:[{Id:8b,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:10b,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:12b,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:24b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.follow_range,Base:18},{Name:generic.knockback_resistance,Base:.78},{Name:generic.attack_damage,Base:4},{Name:generic.armor,Base:12},{Name:generic.attack_knockback,Base:.75}]}



execute as @e[type=player,scores={dustyboneskills=1..}] at @s run loot give @s loot scripts:mob_drops/dustybones
execute as @e[type=player,scores={dustyboneskills=1..}] at @s store result score @s gain_dustybone run clear @s bone
execute as @e[type=player,scores={dustyboneskills=1..,gain_dustybone=1..}] at @s run scoreboard players operation @s r_dustybone += @s gain_dustybone
execute as @e[type=player,scores={dustyboneskills=1..,gain_dustybone=1}] at @s run tellraw @s ["",{"text":"Dusty Bones ","color":"gold","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_dustybone"},"color":"red","italic":"false"},{"text":" Dusty Bone ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_dustybone"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]
execute as @e[type=player,scores={dustyboneskills=1..,gain_dustybone=2..}] at @s run tellraw @s ["",{"text":"Dusty Bones ","color":"gold","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_dustybone"},"color":"red","italic":"false"},{"text":" Dusty Bones ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_dustybone"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]

execute as @e[type=player,scores={dustyboneskills=1..}] at @s store result score @s gain_bonepowder run clear @s white_dye
execute as @e[type=player,scores={dustyboneskills=1..,gain_bonepowder=1..}] at @s run scoreboard players operation @s r_bonepowder += @s gain_bonepowder
execute as @e[type=player,scores={dustyboneskills=1..,gain_bonepowder=1..}] at @s run tellraw @s ["",{"text":"Dusty Bones ","color":"gold","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_bonepowder"},"color":"red","italic":"false"},{"text":" Bone Powder ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_bonepowder"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]

scoreboard players set @e[type=player,scores={dustyboneskills=1..}] gain_dustybone 0
scoreboard players set @e[type=player,scores={dustyboneskills=1..}] gain_bonepowder 0
scoreboard players set @e[type=player,scores={dustyboneskills=1..}] dustyboneskills 0


execute as @e[type=player,scores={spiderkills=1..}] at @s run loot give @s loot scripts:mob_drops/libraryspider
execute as @e[type=player,scores={spiderkills=1..}] at @s store result score @s gain_spidereye run clear @s spider_eye
execute as @e[type=player,scores={spiderkills=1..,gain_spidereye=1..}] at @s run scoreboard players operation @s r_spidereye += @s gain_spidereye
execute as @e[type=player,scores={spiderkills=1..,gain_spidereye=1}] at @s run tellraw @s ["",{"text":"Library Spider ","color":"gold","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_spidereye"},"color":"red","italic":"false"},{"text":" Spider Eye ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_spidereye"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]
execute as @e[type=player,scores={spiderkills=1..,gain_spidereye=2..}] at @s run tellraw @s ["",{"text":"Library Spider ","color":"gold","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_spidereye"},"color":"red","italic":"false"},{"text":" Spider Eyes ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_spidereye"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]

execute as @e[type=player,scores={spiderkills=1..}] at @s store result score @s gain_spidersilk run clear @s string
execute as @e[type=player,scores={spiderkills=1..,gain_spidersilk=1..}] at @s run scoreboard players operation @s r_spidersilk += @s gain_spidersilk
execute as @e[type=player,scores={spiderkills=1..,gain_spidersilk=1..}] at @s run tellraw @s ["",{"text":"Library Spider ","color":"gold","italic":"true"},{"text":"dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_spidersilk"},"color":"red","italic":"false"},{"text":" Spider Silk ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_spidersilk"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]

scoreboard players set @e[type=player,scores={spiderkills=1..}] gain_spidereye 0
scoreboard players set @e[type=player,scores={spiderkills=1..}] gain_spidersilk 0
scoreboard players set @e[type=player,scores={spiderkills=1..}] spiderkills 0


execute as @e[type=player,scores={siegebeastkills=1..}] run tellraw @a ["",{"text":"The ","color":"gray"},{"text":"Siege Beast ","color":"gold"},{"text":"Boss ","color":"red"},{"text":"has been slain! "}]
execute as @e[type=player,scores={siegebeastkills=1..}] run tellraw @a ["",{"text":"All ","color":"red"},{"text":"players will recieve global drop loot.","color":"gray"}]
execute as @e[type=player,scores={siegebeastkills=1..}] run execute as @a at @s run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 100 0
execute as @e[type=player,scores={siegebeastkills=1..}] run loot give @a loot scripts:mob_drops/siegebeast
execute as @e[type=player,scores={siegebeastkills=1..}] run execute as @a store result score @s gain_beasthorn run clear @s prismarine_shard
execute as @e[type=player,scores={gain_beasthorn=1..}] at @s run scoreboard players operation @s r_beasthorn += @s gain_beasthorn
execute as @e[type=player,scores={gain_beasthorn=1}] at @s run tellraw @s ["",{"text":"The Siege Beast Boss ","color":"gold","italic":"true"},{"text":"global dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_beasthorn"},"color":"red","italic":"false"},{"text":" Beast Horn ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_beasthorn"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]
execute as @e[type=player,scores={gain_beasthorn=2..}] at @s run tellraw @s ["",{"text":"The Siege Beast Boss ","color":"gold","italic":"true"},{"text":"global dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_beasthorn"},"color":"red","italic":"false"},{"text":" Beast Horns ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_beasthorn"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]

execute as @e[type=player,scores={siegebeastkills=1..}] run execute as @a store result score @s gain_armorshard run clear @s netherite_scrap
execute as @e[type=player,scores={gain_armorshard=1..}] at @s run scoreboard players operation @s r_armorshard += @s gain_armorshard
execute as @e[type=player,scores={gain_armorshard=1..}] at @s run tellraw @s ["",{"text":"The Siege Beast Boss ","color":"gold","italic":"true"},{"text":"global dropped ","color":"gray","italic":"true"},{"score":{"name":"@s","objective":"gain_armorshard"},"color":"red","italic":"false"},{"text":" Armor Shard ","color":"gray","italic":"true"},{"text":"(","color":"yellow","italic":"false"},{"score":{"name":"@s","objective":"r_armorshard"},"color":"red","italic":"false"},{"text":")","color":"yellow","italic":"false"}]

execute as @e[type=player,scores={siegebeastkills=1..}] run scoreboard players add @s r_beastheart 1
execute as @e[type=player,scores={siegebeastkills=1..}] run tellraw @s ["",{"text":"Congratulations! ","color":"gold"},{"text":"You slew the ","color":"gray"},{"text":"Siege Beast ","color":"gold","italic":"true"},{"text":"Boss","color":"red","italic":"true"},{"text":", earning you ","color":"gray"},{"text":"1 ","color":"red"},{"text":"Siege Beast Heart ","color":"gray"},{"text":"(","color":"yellow"},{"score":{"name":"@s","objective":"r_beastheart"},"color":"red"},{"text":")","color":"yellow"}]

scoreboard players set @e[type=player,scores={gain_beasthorn=1..}] gain_beasthorn 0
scoreboard players set @e[type=player,scores={gain_armorshard=1..}] gain_armorshard 0
scoreboard players set @e[type=player,scores={gain_beastheart=1..}] gain_beastheart 0
scoreboard players set @e[type=player,scores={siegebeastkills=1..}] siegebeastkills 0
