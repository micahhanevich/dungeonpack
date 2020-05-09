execute as @a[scores={Deaths=1}] run stopsound @s ambient minecraft:ambient.basalt_deltas.loop
execute as @a[scores={Deaths=1}] run function scripts:classes/removeclass
execute as @a[scores={Deaths=1}] run function scripts:deaths/deathtext
scoreboard players set @a[scores={Deaths=1}] Deaths 0