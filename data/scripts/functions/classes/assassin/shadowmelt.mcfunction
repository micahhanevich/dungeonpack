execute as @a[scores={shadowmelttimer=0..}] run scoreboard players remove @s shadowmelttimer 1
execute as @a[scores={shadowmelttimer=0}] run playsound minecraft:item.trident.riptide_1 master @s ~ ~ ~ 10 2
execute as @a[scores={shadowmelttimer=0}] run clear @s minecraft:mojang_banner_pattern
execute as @a[scores={shadowmelttimer=0}] run give @s minecraft:mojang_banner_pattern{display:{Name:'[{"text":"Spell: ","color":"yellow","bold":true,"italic":false},{"text":"Shadowmelt","color":"dark_purple","bold":false,"italic":false}]',Lore:['{"text":"Makes your armor and body","color":"gray","bold":false,"italic":true}','[{"text":"invisible for ","color":"gray","bold":false,"italic":true},{"text":"5 seconds","color":"yellow","bold":true,"italic":false},{"text":"."}]','[{"text":"25 second ","color":"yellow","bold":true,"italic":false},{"text":"cooldown.","color":"gray","bold":false,"italic":true}]']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:mojang_banner_pattern", tag:{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}}]},scores={class=3}] run scoreboard players set @s spellcast 1
execute as @a[scores={spellcast=1,class=3}] run replaceitem entity @s weapon.offhand air
execute as @a[scores={spellcast=1,class=3}] run give @s minecraft:mojang_banner_pattern{display:{Name:'[{"text":"Spell: ","color":"yellow","bold":true,"italic":false},{"text":"Shadowmelt","color":"dark_purple","bold":false,"italic":false}]',Lore:['{"text":"Makes your armor and body","color":"gray","bold":false,"italic":true}','[{"text":"invisible for ","color":"gray","bold":false,"italic":true},{"text":"7 seconds","color":"yellow","bold":true,"italic":false},{"text":"."}]','[{"text":"25 second ","color":"yellow","bold":true,"italic":false},{"text":"cooldown.","color":"gray","bold":false,"italic":true}]']},HideFlags:63} 1
execute as @a[scores={spellcast=1,class=3}] at @s run particle minecraft:smoke ~ ~.75 ~ .25 .5 .25 0 20
execute as @a[scores={spellcast=1,class=3}] at @s run particle minecraft:campfire_cosy_smoke ~ ~.75 ~ .25 .5 .25 0 10 force
execute as @a[scores={spellcast=1,class=3}] at @s run execute at @a[distance=..10] run playsound minecraft:block.ender_chest.open master @s ~ ~ ~ 10 0
execute as @a[scores={spellcast=1,class=3}] run effect give @s minecraft:invisibility 8 0 true

execute as @a[scores={spellcast=1,class=3}] run replaceitem entity @s armor.head air 1
execute as @a[scores={spellcast=1,class=3}] run replaceitem entity @s armor.chest air 1
execute as @a[scores={spellcast=1,class=3}] run replaceitem entity @s armor.feet air 1
execute as @a[scores={spellcast=1,class=3}] run attribute @s minecraft:generic.armor base set 6

execute as @a[scores={spellcast=1,class=3}] run scoreboard players set @s shadowmelttimer 500
execute as @a[scores={spellcast=1,class=3}] run scoreboard players set @s spellcast 0


execute as @a[scores={class=3},nbt={ActiveEffects:[{Id:14b, Duration:20}]}] run playsound minecraft:item.trident.riptide_3 master @s ~ ~ ~ 10 0
execute as @a[scores={class=3},nbt={ActiveEffects:[{Id:14b, Duration:1}]}] run attribute @s minecraft:generic.armor base set 0
execute as @a[scores={class=3},nbt={ActiveEffects:[{Id:14b, Duration:1}]}] run replaceitem entity @s armor.head minecraft:daylight_detector{display:{Name:'{"text":"Assassin Mask","color":"green","italic":false}',Lore:['{"text":"1 armor","color":"blue","italic":false}']},HideFlags:63,RepairCost:999,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;-1724871098,-384941616,-1468024073,-792433330],Slot:"head"}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @a[scores={class=3},nbt={ActiveEffects:[{Id:14b, Duration:1}]}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:4010270,Name:'{"text":"Assassin Cloak","color":"green","italic":false}',Lore:['{"text":"2 armor","color":"blue","italic":false}']},HideFlags:63,RepairCost:999,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;884982225,1648512231,-2132918445,-1744663757],Slot:"chest"}]} 1
execute as @a[scores={class=3},nbt={ActiveEffects:[{Id:14b, Duration:1}]}] run replaceitem entity @s armor.feet minecraft:netherite_boots{display:{Name:'{"text":"Stealth Boots","color":"green","italic":false}',Lore:['{"text":"3 armor","color":"blue","italic":false}']},HideFlags:63,RepairCost:999,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-623951717,-167884850,-1567513270,137164649],Slot:"feet"}]} 1