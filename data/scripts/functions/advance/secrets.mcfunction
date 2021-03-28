advancement grant @a[advancements={scripts:secrets/poop_chute=false},x=955.5,y=168,z=844,distance=..1.5] only scripts:secrets/poop_chute
advancement grant @a[advancements={scripts:secrets/hidden_mine=false},x=973,y=163,z=867,distance=..1] only scripts:secrets/hidden_mine
advancement grant @a[advancements={scripts:secrets/hidden_mine=false},x=959,y=158,z=867,distance=..1] only scripts:secrets/hidden_mine
advancement grant @a[advancements={scripts:secrets/bzzz=false},x=970,y=142,z=852,distance=..1] only scripts:secrets/bzzz
advancement grant @a[advancements={scripts:secrets/beauty_in_bloom=false},x=948,y=167,z=870,distance=..3] only scripts:secrets/beauty_in_bloom
execute if block 970 136 877 spruce_trapdoor[open=false] run advancement grant @a[advancements={scripts:secrets/flush=false},x=970,y=135,z=877,distance=..1] only scripts:secrets/flush

advancement grant @a[advancements={scripts:secrets/crack_in_the_wall=false},x=947.5,y=134,z=889.5,distance=..0.75] only scripts:secrets/crack_in_the_wall
advancement grant @a[advancements={scripts:secrets/crack_in_the_wall=false},x=969,y=136,z=886,distance=..1] only scripts:secrets/crack_in_the_wall
advancement grant @a[advancements={scripts:secrets/snowpass_trail=false},x=955,y=165,z=786,distance=..4] only scripts:secrets/snowpass_trail
advancement grant @a[advancements={scripts:secrets/what_a_view=false},x=979,y=152,z=842,distance=..3] only scripts:secrets/what_a_view
execute as @e[type=player] at @s if block ~ ~-1 ~ spruce_leaves if block ~ ~ ~ snow[layers=1] run advancement grant @s[advancements={scripts:secrets/tree_climber=false}] only scripts:secrets/tree_climber
advancement grant @a[advancements={scripts:secrets/parkour_god=false},x=966,y=136,z=857,distance=..2] only scripts:secrets/parkour_god
advancement grant @a[advancements={scripts:secrets/parkour_god=false},x=987,y=141,z=865,distance=..2] only scripts:secrets/parkour_god
advancement grant @a[advancements={scripts:secrets/parkour_god=false},x=983,y=141,z=865,distance=..2] only scripts:secrets/parkour_god
advancement grant @a[advancements={scripts:secrets/invisible_button=false},x=962,y=137,z=841,distance=..1] only scripts:secrets/invisible_button
advancement grant @a[advancements={scripts:secrets/rafters=false},x=985,y=145,z=852,distance=..1] only scripts:secrets/rafters
execute as @e[type=player] at @s if block ~.5 ~ ~ barrier run advancement grant @s[advancements={scripts:secrets/big_idea=false}] only scripts:secrets/big_idea
execute as @e[type=player] at @s if block ~-.5 ~ ~ barrier run advancement grant @s[advancements={scripts:secrets/big_idea=false}] only scripts:secrets/big_idea
execute as @e[type=player] at @s if block ~ ~ ~.5 barrier run advancement grant @s[advancements={scripts:secrets/big_idea=false}] only scripts:secrets/big_idea
execute as @e[type=player] at @s if block ~ ~ ~-.5 barrier run advancement grant @s[advancements={scripts:secrets/big_idea=false}] only scripts:secrets/big_idea
advancement grant @a[advancements={scripts:secrets/forbidden_texts=false},x=989,y=131,z=842,distance=..4,y_rotation=-130..-50] only scripts:secrets/forbidden_texts
advancement grant @a[advancements={scripts:secrets/forbidden_texts=false},x=988,y=132,z=836,distance=..3,y_rotation=-110..-60] only scripts:secrets/forbidden_texts
advancement grant @a[advancements={scripts:secrets/forbidden_texts=false},x=988,y=132,z=848,distance=..3,y_rotation=-110..-65] only scripts:secrets/forbidden_texts


