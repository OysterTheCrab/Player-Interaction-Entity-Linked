tellraw @s ["",{"text":"Hello! Thank you for using my "},{"text":"Player/Interaction Entity Linked Pack","bold":true,"color":"green"},{"text":"! \n\nFor some common commands use \""},{"text":"/function otc_player:.info/page_1","color":"yellow","clickEvent":{"action":"run_command","value":"/function otc_player:.info/page_1"}},{"text":"\" or "},{"text":"click here","color":"yellow","clickEvent":{"action":"run_command","value":"/function otc_player:.info/page_1"}},{"text":"! \n\nIf you have any questions or issues with the pack, feel free to join the\n"},{"text":"Minecraft Commands Discord ","color":"aqua"},{"text":"here","color":"yellow","clickEvent":{"action":"open_url","value":"https://discord.gg/QAFXFtZ"}},{"text":" ","clickEvent":{"action":"open_url","value":"https://discord.gg/QAFXFtZ"}},{"text":"and ask! \n\n\n-"},{"text":"Oyster","italic":true}]
tag @s add otcUser

# Assigns an id to the player if they do not already have one
execute as @a[tag=!otcInteract] run function otc_player:id

