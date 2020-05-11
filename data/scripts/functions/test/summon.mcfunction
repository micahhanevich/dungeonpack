execute at @s run summon wolf ~ ~ ~ {Owner:[I; 0, 0, 0, 0],CustomName:{"text":"Summons","color":"green"},CustomNameVisible:true,NoAI:1}
execute at @s as @e[type=wolf,limit=1,sort=nearest,tag=!summoned] run tag @s add summoned
execute at @s store result entity @e[tag=summoned,limit=1,sort=nearest,type=wolf] Owner[0] int 1 run data get entity @s UUID[0]
execute at @s store result entity @e[tag=summoned,limit=1,sort=nearest,type=wolf] Owner[1] int 1 run data get entity @s UUID[1]
execute at @s store result entity @e[tag=summoned,limit=1,sort=nearest,type=wolf] Owner[2] int 1 run data get entity @s UUID[2]
execute at @s store result entity @e[tag=summoned,limit=1,sort=nearest,type=wolf] Owner[3] int 1 run data get entity @s UUID[3]
execute at @s as @e[type=wolf,limit=1,sort=nearest,tag=summoned] run data merge entity @s {NoAI:0}