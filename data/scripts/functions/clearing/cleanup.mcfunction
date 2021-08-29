kill @e[type=minecraft:arrow,nbt={inGround:1b}]
kill @e[type=tnt]
kill @e[type=tnt_minecart]


execute as @a[scores={Deaths=1..}] run function scripts:deaths/dead


scoreboard players add @e[tag=poopchute,scores={poopchutetimer=0..}] poopchutetimer 1
execute as @e[tag=poopchute] at @s if block ~ ~ ~ minecraft:spruce_pressure_plate[powered=true] run scoreboard players set @s poopchutetimer 0
execute as @e[tag=poopchute,scores={poopchutetimer=0..40}] run setblock 955 169 843 air destroy
scoreboard players set @e[tag=poopchute,scores={poopchutetimer=40..}] poopchutetimer -1
execute as @e[tag=poopchute,scores={poopchutetimer=-1}] if block 955 169 843 air run setblock 955 169 843 spruce_planks



spawnpoint @a 932 169 847


execute as @e[distance=0..3,x=943,y=151,z=856] at @s run effect give @s minecraft:blindness 2 0 true
execute as @e[distance=0..3,x=943,y=150,z=856] at @s run tp @s 940 148 886 ~ ~


execute as @e[type=item,nbt=!{PickupDelay:200s}] run data merge entity @s {PickupDelay:200s}
kill @e[type=item,nbt={Age:100s}]


execute as @e[type=player,tag=!players] run scoreboard players set @s woundtimer -1
tag @e[type=player,tag=!players] add players


execute as @e[type=player,scores={left=1}] run scoreboard players set @s lk 1
scoreboard players reset @a left
execute as @e[type=player,scores={lk=1}] run scoreboard players set woundtimer 0
execute as @e[type=player,scores={lk=1,class=0..},gamemode=adventure] run kill @s
scoreboard players reset * lk


scoreboard players set @a dmgdealt 0
scoreboard players set @a dmgdealt_abs 0
scoreboard players set @a dmgdealt_res 0
scoreboard players set @a dmgtaken 0
scoreboard players set @a dmgtaken_abs 0
scoreboard players set @a dmgtaken_res 0


scoreboard players set @a[scores={killDetect=1..}] killDetect 0


scoreboard players add world spawntimer 1
execute if score world spawntimer matches -1 run tp @e[tag=spawnpoint] 979 138.65 834 0 0
execute if score world spawntimer matches 10 run tp @e[tag=spawnpoint] 968 136 880 180 0
execute if score world spawntimer matches 25 run tp @e[tag=spawnpoint] 940 142 886 90 0
execute if score world spawntimer matches 40 run tp @e[tag=spawnpoint] 920 130 825 0 0
execute if score world spawntimer matches 55 run tp @e[tag=spawnpoint] 953 154 799 -45 0
execute if score world spawntimer matches 70 run tp @e[tag=spawnpoint] 960 169 847 -90 -15
execute if score world spawntimer matches 85.. run scoreboard players set world spawntimer -1


scoreboard players add @e[tag=summoned] summonage 1
kill @e[tag=summoned,scores={summonage=600..}]


execute unless entity @e[type=minecraft:armor_stand,tag=spawnpoint] run summon minecraft:armor_stand 979 138.65 834 {Marker:1,Tags:["spawnpoint"],Invisible:1,Invulnerable:1}


scoreboard players enable @a[tag=players] pick_upgrade_0
execute as @a[scores={pick_upgrade_0=1..}] at @s run function scripts:shops/blacksmith/upgrade_pick_0_execute
scoreboard players set @a[scores={pick_upgrade_0=1..}] pick_upgrade_0 0


execute as @e[type=player] unless entity @s[scores={t_pickaxe=0..}] unless entity @s[scores={t_pickaxe=..0}] run scoreboard players set @s t_pickaxe 0


scoreboard players enable @a reset
kill @a[scores={reset=1..}]
scoreboard players set @a[scores={reset=1..}] reset 0


scoreboard players enable @a[scores={class=-1}] tutorial
execute as @a[scores={class=0..}] run trigger tutorial add 0


tell @a[scores={tutorial=1}] Sorry, that feature isn't ready yet! You can check Pinned Messages in the "dungeon-pvp-updates" channel in discord for a tutorial post!
scoreboard players set @a[scores={tutorial=1}] tutorial 0


scoreboard players add world timejump 1
execute as @e[scores={timejump=19..}] run time add 2t
scoreboard players set @e[scores={timejump=19..}] timejump 0


scoreboard players reset @a detect_rclick

scoreboard players set @a walk 0
scoreboard players set @a sprint 0
scoreboard players set @a fly 0
scoreboard players set @a water_walk 0
scoreboard players set @a swim 0
scoreboard players set @a climb 0
scoreboard players set @a sneak 0
scoreboard players set @a fall 0
scoreboard players set @a float_walk 0
scoreboard players set @a aviate 0
scoreboard players set @a move 0
