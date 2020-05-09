give @a[scores={class=1,killDetect=1}] arrow 15
give @a[scores={class=1,killDetect=2}] arrow 20
execute as @a[scores={class=1}] store result score @s ammo run clear @s arrow 0
execute as @a[scores={class=1,ammo=21..}] run clear @s arrow
execute as @a[scores={class=1,ammo=21..}] run give @s arrow 20