execute as @e[type=player,scores={class=1,dmgtaken=1..}] at @s run execute as @e[type=player,distance=0.00001..10,sort=nearest,scores={dmgdealt=1..},nbt=!{Attributes:[{Modifiers:[{UUID:[I; 0, 0, 0, 2]}]}]}] run function scripts:classes/hunter/fightorflight
execute as @e[type=player,scores={class=1,dmgtaken=1..}] at @s run execute as @e[type=player,distance=0.00001..10,sort=nearest,scores={dmgdealt=1..},nbt={Attributes:[{Modifiers:[{UUID:[I; 0, 0, 0, 2]}]}]}] run scoreboard players set @s fftimer 60