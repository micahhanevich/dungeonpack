tellraw @s {"text":""}
tellraw @s {"text":"-------------------","color":"dark_gray"}
tellraw @s [{"text":"*","color":"yellow","bold":true},{"text":"Iron Pickaxe","color":"white","bold":true,"hoverEvent":{"action":"show_text","contents":"Tier 3 Pickaxe"}}]
tellraw @s {"text":""}
tellraw @s [{"text":"-","color":"dark_gray"},{"text":"Resources","color":"yellow","italic":true},{"text":"-"}]
tellraw @s[scores={r_coal=..99}] [{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"r_coal"},"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":"/","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":"100","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":")-"},{"text":"Coal","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"A common Ore, found everywhere","color":"green"}]}}]
tellraw @s[scores={r_coal=100..}] [{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"r_coal"},"color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Sufficient Resources","color":"green"}]}},{"text":"/","hoverEvent":{"action":"show_text","contents":[{"text":"Sufficient Resources","color":"green"}]}},{"text":"100","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Sufficient Resources","color":"green"}]}},{"text":")-"},{"text":"Coal","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"A common Ore, found everywhere","color":"green"}]}}]
execute as @s unless entity @s[scores={r_coal=0..}] run tellraw @s [{"text":"(","color":"dark_gray"},{"text":"0","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":"/","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":"100","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":")-"},{"text":"Coal","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"A common Ore, found everywhere","color":"green"}]}}]
tellraw @s[scores={r_iron=..44}] [{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"r_stone"},"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":"/","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":"45","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":")-"},{"text":"Stone","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"An uncommon resource; drops from mining any Ore","color":"green"}]}}]
tellraw @s[scores={r_iron=45..}] [{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"r_stone"},"color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Sufficient Resources","color":"green"}]}},{"text":"/","hoverEvent":{"action":"show_text","contents":[{"text":"Sufficient Resources","color":"green"}]}},{"text":"45","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Sufficient Resources","color":"green"}]}},{"text":")-"},{"text":"Stone","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"An uncommon resource; drops from mining any Ore","color":"green"}]}}]
execute as @s unless entity @s[scores={r_iron=0..}] run tellraw @s [{"text":"(","color":"dark_gray"},{"text":"0","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":"/","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":"45","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":")-"},{"text":"Iron","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"An uncommon resource; drops from mining any Ore","color":"green"}]}}]
tellraw @s[scores={r_bonepowder=..50}] [{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"r_bonepowder"},"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":"/","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":"50","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":")-"},{"text":"Bone Powder","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"A common resource dropped from Dusty Bones","color":"green"}]}}]
tellraw @s[scores={r_bonepowder=50..}] [{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"r_bonepowder"},"color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Sufficient Resources","color":"green"}]}},{"text":"/","hoverEvent":{"action":"show_text","contents":[{"text":"Sufficient Resources","color":"green"}]}},{"text":"50","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Sufficient Resources","color":"green"}]}},{"text":")-"},{"text":"Bone Powder","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"A common resource dropped from Dusty Bones","color":"green"}]}}]
execute as @s unless entity @s[scores={r_stone=0..}] run tellraw @s [{"text":"(","color":"dark_gray"},{"text":"0","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":"/","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":"50","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Insufficient Resources","color":"red"}]}},{"text":")-"},{"text":"Bone Powder","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"A common resource dropped from Dusty Bones","color":"green"}]}}]
tellraw @s {"text":""}
tellraw @s [{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/trigger pick_upgrade_0 add 1"}},{"text":"Upgrade?","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to Upgrade","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger pick_upgrade_0 add 1"}},{"text":"]","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger pick_upgrade_0 add 1"}}]
