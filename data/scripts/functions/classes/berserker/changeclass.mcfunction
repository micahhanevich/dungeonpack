scoreboard players set @s class 4
attribute @s minecraft:generic.max_health base set 20
attribute @s minecraft:generic.attack_speed base set 4

item replace entity @s armor.head with minecraft:skeleton_skull{display:{Lore:['{"text":"3 Armor","color":"blue","italic":false}','{"text":"Arrow Resist I","color":"gold","italic":false}'],Name:'{"text":"Berserker Skull","color":"red","bold":false,"italic":false}'},HideFlags:63,Enchantments:[{id:"minecraft:projectile_protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-612254039,-1237103770,-1215879551,235686534],Slot:"head"}]} 1
item replace entity @s hotbar.0 with minecraft:iron_axe{display:{Lore:['{"text":"7 Damage","color":"blue","italic":false}'],Name:'{"text":"Berserker Hatchet","color":"red","bold":false,"italic":false}'},HideFlags:63,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;-1393892625,-700953805,-1586878919,-82733608],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3,Operation:0,UUID:[I;-2094289388,180570657,-1184343851,-1027923922],Slot:"mainhand"}]} 1
item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Berserker Shirt","color":"red","italic":false}'},HideFlags:31,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;861414890,1723220895,-1518228792,-1722605538]}]} 1

tp @e[tag=spawnpoint,limit=1]
execute as @a[scores={class=0..}] at @s run playsound minecraft:entity.wolf.growl ambient @s ~ ~ ~ 1 1
execute at @s run particle minecraft:portal ~ ~1 ~ .1 .3 .1 1 150 force