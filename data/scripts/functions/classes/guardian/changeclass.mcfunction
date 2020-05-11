scoreboard players set @s class 0
attribute @s minecraft:generic.max_health base set 26
attribute @s minecraft:generic.knockback_resistance base set .1
attribute @s minecraft:generic.attack_speed base set 3

replaceitem entity @s armor.head minecraft:netherite_helmet{display:{Name:'{"text":"Guardian Helm","color":"green","italic":false}',Lore:['{"text":"3 armor","color":"blue","italic":false}']},HideFlags:63,RepairCost:999,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-1724871098,-384941616,-1468024073,-792433330],Slot:"head"}]} 1
replaceitem entity @s armor.chest minecraft:netherite_chestplate{display:{Name:'{"text":"Guardian Cuirass","color":"green","italic":false}',Lore:['{"text":"4 armor","color":"blue","italic":false}']},HideFlags:63,RepairCost:999,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUID:[I;884982225,1648512231,-2132918445,-1744663757],Slot:"chest"}]} 1
replaceitem entity @s armor.legs minecraft:chainmail_leggings{display:{Name:'{"text":"Guardian Greaves","color":"green","italic":false}',Lore:['{"text":"3 armor","color":"blue","italic":false}']},HideFlags:63,RepairCost:999,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;1553372694,1772769263,-1680851118,146948857],Slot:"legs"}]} 1
replaceitem entity @s armor.feet minecraft:iron_boots{display:{Name:'{"text":"Guardian Boots","color":"green","italic":false}',Lore:['{"text":"2 armor","color":"blue","italic":false}']},HideFlags:63,RepairCost:999,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-623951717,-167884850,-1567513270,137164649],Slot:"feet"}]} 1
replaceitem entity @s hotbar.0 minecraft:iron_sword{HideFlags:63,display:{Name:'{"text":"Guardian Broadsword","color":"green","italic":false}',Lore:['{"text":"4.5 Damage","color":"blue","italic":false}']},RepairCost:999,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4.5,Operation:0,UUID:[I;-425967534,1739016179,-1961605710,-95341518],Slot:"mainhand"}]} 1
replaceitem entity @s hotbar.7 minecraft:mojang_banner_pattern{display:{Name:'[{"text":"Status: ","color":"yellow","bold":true,"italic":false},{"text":"Wound","color":"red","bold":false}]',Lore:['{"text":"Hitting an opponent with your","color":"gray","italic":true}','[{"text":"sword applies a ","color":"gray","italic":true},{"text":"7.5% Slow","color":"blue","bold":true,"italic":false}]','[{"text":"for ","color":"gray","bold":false,"italic":true},{"text":"4 seconds","color":"yellow","bold":true,"italic":"false"},{"text":".","italic":"true"}]','[{"text":"Hitting a ","color":"gray","italic":true},{"text":"Wounded ","color":"dark_red","bold":true,"italic":"false"},{"text":"opponent","italic":"true"}]','{"text":"refreshes duration to","color":"gray","italic":true}','[{"text":"6 seconds","color":"yellow","bold":true,"italic":false},{"text":".","color":"gray","italic":true}]']},HideFlags:63} 1
replaceitem entity @p hotbar.8 minecraft:mojang_banner_pattern{display:{Name:'[{"text":"Passive: ","color":"yellow","bold":true,"italic":false},{"text":"Undaunted","color":"blue","bold":false}]',Lore:['{"text":"5% chance to not take knockback","color":"gray","italic":true}']},HideFlags:63} 1