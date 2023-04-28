data modify storage otc_interact:entity height set from entity @e[type=interaction,tag=otcInteract,limit=1,sort=nearest] height
data modify storage otc_interact:entity width set from entity @e[type=interaction,tag=otcInteract,limit=1,sort=nearest] width
tellraw @s ["",{"text":"Information About Nearest Interaction","color":"yellow"},{"text":"\n\n"},{"text":"* ID: ","color":"dark_green"},{"score":{"name":"@e[type=interaction,tag=otcInteract,limit=1,sort=nearest]","objective":"otcInteract"},"bold":true,"color":"dark_green"},{"text":"\n"},{"text":"* Width: ","color":"gold"},{"storage":"otc_interact:entity","nbt":"width","bold":true,"color":"gold"},{"text":"\n"},{"text":"* Height: ","color":"dark_aqua"},{"storage":"otc_interact:entity","nbt":"height","bold":true,"color":"dark_aqua"}]

