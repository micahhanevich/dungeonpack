scoreboard players set @s class 3
attribute @s minecraft:generic.attack_speed base set 3
attribute @s minecraft:generic.movement_speed modifier add 0-0-0-1-0 passivespd 0.1 multiply_base

replaceitem entity @s armor.head minecraft:daylight_detector{display:{Name:'{"text":"Assassin Mask","color":"green","italic":false}',Lore:['{"text":"1 armor","color":"blue","italic":false}']},HideFlags:63,RepairCost:999,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;-1724871098,-384941616,-1468024073,-792433330],Slot:"head"}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:4010270,Name:'{"text":"Assassin Cloak","color":"green","italic":false}',Lore:['{"text":"2 armor","color":"blue","italic":false}']},HideFlags:63,RepairCost:999,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;884982225,1648512231,-2132918445,-1744663757],Slot:"chest"}]} 1
replaceitem entity @s armor.feet minecraft:netherite_boots{display:{Name:'{"text":"Stealth Boots","color":"green","italic":false}',Lore:['{"text":"3 armor","color":"blue","italic":false}']},HideFlags:63,RepairCost:999,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-623951717,-167884850,-1567513270,137164649],Slot:"feet"}]} 1
replaceitem entity @s hotbar.0 minecraft:netherite_sword{display:{Name:'{"text":"Murderblade","color":"green","italic":false}',Lore:['{"text":"6 Damage","color":"blue","italic":false}']},RepairCost:999,HideFlags:63,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-425967534,1739016179,-1961605710,-95341518],Slot:"mainhand"}]} 1
replaceitem entity @s hotbar.1 mojang_banner_pattern{display:{Name:'[{"text":"Spell: ","color":"yellow","bold":true,"italic":false},{"text":"Shadowmelt","color":"dark_purple","bold":false,"italic":false}]',Lore:['{"text":"Makes your armor and body","color":"gray","bold":false,"italic":true}','[{"text":"invisible for ","color":"gray","bold":false,"italic":true},{"text":"5 seconds","color":"yellow","bold":true,"italic":false},{"text":"."}]','[{"text":"25 second ","color":"yellow","bold":true,"italic":false},{"text":"cooldown.","color":"gray","bold":false,"italic":true}]','{"text":"Put in offhand to activate","color":"aqua","italic":true}']},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
give @s netherite_pickaxe{CanDestroy:["minecraft:coal_ore","minecraft:iron_ore","minecraft:gold_ore","minecraft:emerald_ore","minecraft:diamond_ore"],display:{Name:'{"text":"Rusty Pick","color":"gold","italic":false}',Lore:['{"text":"Used to mine Ores","color":"light_purple","italic":true}']},HideFlags:63,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-5,Operation:0,UUID:[I;-140614809,1119634505,-1306943518,1742129052],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;-1810993639,-1307293162,-1794816126,-1395395825],Slot:"mainhand"}]} 1

tp @e[tag=spawnpoint,limit=1]
execute as @a[scores={class=0..}] at @s run playsound minecraft:entity.elder_guardian.ambient ambient @s ~ ~ ~ 1 2
execute at @e[tag=spawnpoint,limit=1] run particle minecraft:portal ~ ~1 ~ .1 .3 .1 1 150 force