execute as @a[scores={class=4,berserk=1..,berserklevel=0}] run attribute @s minecraft:generic.attack_speed modifier add 0-0-0-0-10 berserk1 0.15 multiply_base
execute as @a[scores={class=4,berserk=1..,berserklevel=0}] run scoreboard players set @s berserklevel 1
execute as @a[scores={class=4,berserk=1}] at @s run particle minecraft:instant_effect ~ ~1.75 ~ .25 0 .25 300 1 force
execute as @a[scores={class=4,berserk=2..,berserklevel=0..1}] run attribute @s minecraft:generic.attack_speed modifier add 0-0-0-0-11 berserk2 0.15 multiply_base
execute as @a[scores={class=4,berserk=2..,berserklevel=0..1}] run scoreboard players set @s berserklevel 2
execute as @a[scores={class=4,berserk=2}] at @s run particle minecraft:crit ~ ~2 ~ .25 0 .25 0 1 force
execute as @a[scores={class=4,berserk=3..,berserklevel=0..2}] run attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-12 berserk3 0.15 multiply_base
execute as @a[scores={class=4,berserk=3..,berserklevel=0..2}] run scoreboard players set @s berserklevel 3
execute as @a[scores={class=4,berserk=3}] at @s run particle minecraft:instant_effect ~ ~1.75 ~ .25 0 .25 300 1 force
execute as @a[scores={class=4,berserk=3}] at @s run particle minecraft:crit ~ ~2 ~ .25 0 .25 0 1 force