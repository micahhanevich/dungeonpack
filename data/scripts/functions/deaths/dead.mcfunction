scoreboard players set @s class -1
scoreboard players set @s shadowmelttimer -1
scoreboard players set @s lockdowntimer -1
scoreboard players set @s canseebossbar 0
scoreboard players set @s berserk 0
scoreboard players set @s berserklevel 0
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.armor_toughness base set 0
attribute @s minecraft:generic.attack_damage base set 1
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.knockback_resistance base set 0
attribute @s minecraft:generic.luck base set 0
attribute @s minecraft:generic.max_health base set 20
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612

tellraw @a ["",{"selector":"@s","color":"red"},{"text":" has fallen in combat","color":"yellow"}]
scoreboard players set @a[scores={Deaths=1}] Deaths 0