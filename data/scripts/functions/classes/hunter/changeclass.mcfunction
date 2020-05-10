scoreboard players set @s class 1
attribute @s minecraft:generic.max_health base set 16
attribute @s minecraft:generic.attack_speed base set 30

replaceitem entity @s armor.head minecraft:chainmail_helmet{display:{Name:'{"text":"Hunting Hood","color":"green","italic":false}',Lore:['{"text":"4 armor","color":"blue","italic":false}']},HideFlags:63,RepairCost:999,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUID:[I;-448182018,-666481567,-1580720143,-1922461983],Slot:"head"}]} 1
replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:6126922,Name:'{"text":"Hunting Coat","color":"green","italic":false}',Lore:['{"text":"4 armor","color":"blue","italic":false}']},HideFlags:63,RepairCost:999,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUID:[I;-1953804648,-552580577,-1261155171,-1790558425],Slot:"chest"}],HideFlags:63} 1
replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:6372637,Name:'{"text":"Hunting Boots","color":"green","italic":false}',Lore:['{"text":"2 armor","color":"blue","italic":false}']},HideFlags:63,RepairCost:999,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-298669143,515721588,-1353603279,-2036238552],Slot:"feet"}],HideFlags:63} 1
replaceitem entity @s hotbar.0 minecraft:wooden_sword{display:{Name:'{"text":"Hunting Dagger","color":"green","italic":false}',Lore:['{"text":"3.5 Damage","color":"blue","italic":false}']},HideFlags:63,RepairCost:999,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3.5,Operation:0,UUID:[I;-1682269959,-1879225583,-1217869406,1299345797],Slot:"mainhand"}]} 1
replaceitem entity @s hotbar.1 minecraft:bow{display:{Name:'{"text":"Hunting Bow","color":"green","italic":false}',Lore:['{"text":"Two-Handed","color":"gold","italic":false}']},HideFlags:63,RepairCost:999,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-10,Operation:0,UUID:[I;-1134674002,-1465365932,-1469768512,1871157264]}]} 1
replaceitem entity @s hotbar.7 minecraft:mojang_banner_pattern{display:{Name:'[{"text":"Passive: ","color":"yellow","bold":true,"italic":false},{"text":"Scavenger","color":"blue","bold":false,"italic":false}]',Lore:['{"text":"On kill, the hunter","color":"gray","italic":true}','[{"text":"regains ","color":"gray","italic":true},{"text":"15 arrows","color":"green","bold":true,"italic":false},{"text":".","italic":true}]','[{"text":"Max of ","color":"gray","italic":true},{"text":"20","color":"yellow","bold":true,"italic":false},{"text":".","italic":true}]']},HideFlags:63} 1
replaceitem entity @s hotbar.8 minecraft:mojang_banner_pattern{display:{Name:'[{"text":"Passive: ","color":"yellow","bold":true,"italic":false},{"text":"Fight or Flight","color":"blue","bold":false,"italic":false}]',Lore:['{"text":"When the hunter is hit","color":"gray","italic":true}','{"text":"with a melee attack, the","color":"gray","italic":true}','[{"text":"attacker is given a ","color":"gray","italic":true},{"text":"10%","color":"blue","bold":true,"italic":false}]','[{"text":"Slow ","color":"blue","bold":true,"italic":false},{"text":"for 3 seconds.","color":"gray","bold":false,"italic":true}]']},HideFlags:63} 1
give @s arrow 15