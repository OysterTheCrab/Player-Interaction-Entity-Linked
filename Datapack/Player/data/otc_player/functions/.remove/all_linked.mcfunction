# Sets the player's id to the current id
scoreboard players operation $current otcInteract = @s otcInteract

# Stores the count of linked interaction entitys
execute store result score $count otcInteract if entity @e[type=interaction,predicate=otc_player:match_id]

# Runs the success message if the number of linked interaction entities is > 1
execute if score $count otcInteract matches 1.. run tellraw @s ["",{"text":"CONSOLE:","bold":true,"color":"gold"},{"text":" removed ","bold":true,"italic":true,"color":"gold"},{"score":{"name":"$count","objective":"otcInteract"},"bold":true,"italic":true,"color":"dark_green"},{"text":" linked interaction entities!","bold":true,"italic":true,"color":"gold"}]

# Runs the error message if the number of linked interaction entities is < 1
execute if score $count otcInteract matches 0 run tellraw @s ["",{"text":"ERROR: ","bold":true,"color":"dark_red"},{"text":"there are no linked interaction entities \u0020","italic":true,"bold":false,"color":"dark_red"}]

# Kills the linked interaction entities 
kill @e[type=interaction,predicate=otc_player:match_id]
