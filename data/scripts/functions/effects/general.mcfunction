effect give @a[gamemode=adventure] minecraft:saturation 2 0 true
effect give @a[gamemode=adventure,nbt=!{ActiveEffects:[{Id:10b}]}] minecraft:regeneration 2 0 true
effect give @a[gamemode=adventure,nbt={ActiveEffects:[{Duration:1,Id:10b}]}] minecraft:regeneration 4 0 true
effect give @a[gamemode=adventure,scores={class=-1}] minecraft:resistance 2 10 false
effect give @a[gamemode=adventure,scores={class=-1}] minecraft:speed 5 0 false

effect give @a[gamemode=adventure,scores={class=0..,killDetect=1..}] minecraft:instant_health 1 0 false
effect give @a[gamemode=adventure,scores={class=0..,killDetect=1..}] minecraft:regeneration 4 2 false

effect give @a[gamemode=creative] minecraft:night_vision 15 0 true
effect give @a[gamemode=spectator] minecraft:night_vision 15 0 true