execute as @a at @s if block ~ ~ ~ minecraft:campfire[lit=false] run playsound minecraft:block.blastfurnace.fire_crackle master @a[distance=..20] ~ ~ ~ 20 2
execute as @a at @s if block ~ ~ ~ minecraft:campfire[lit=false] run playsound minecraft:block.beacon.power_select master @a[distance=..20] ~ ~ ~ 20 0
execute as @a at @s if block ~ ~ ~ minecraft:campfire[lit=false] run title @s times 100 50 25
execute as @a at @s if block ~ ~ ~ minecraft:campfire[lit=false] run title @s title {"text":"BONFIRE LIT","color":"gold", "bold": "true"}
execute as @a at @s if block ~ ~ ~ minecraft:campfire[lit=false] run setblock ~ ~ ~ campfire[lit=true,signal_fire=true]