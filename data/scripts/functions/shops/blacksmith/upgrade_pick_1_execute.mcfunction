execute as @s[type=player,scores={r_coal=35..,r_stone=25..,r_bonepowder=50..,t_pickaxe=0}] run tag @s add pick_up_0
execute as @s[type=player,tag=pick_up_0] run scoreboard players remove @s r_coal 35
execute as @s[type=player,tag=pick_up_0] run scoreboard players remove @s r_stone 25
execute as @s[type=player,tag=pick_up_0] run scoreboard players remove @s r_bonepowder 50
execute as @s[type=player,tag=pick_up_0] run scoreboard players set @s t_pickaxe 1
execute as @s[type=player,tag=pick_up_0] run tag @s remove pick_up_0
