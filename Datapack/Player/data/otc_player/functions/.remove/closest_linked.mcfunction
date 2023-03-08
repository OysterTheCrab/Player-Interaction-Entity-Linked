# Sets the player's id to the current id
scoreboard players operation $current otcInteract = @s otcInteract

# Stores the count of interaction entitys
execute store result score $count otcInteract if entity @e[type=interaction,predicate=otc_player:match_id]

# Runs the success message if the number of linked interaction entities is > 1
execute if score $count otcInteract matches 1.. run tellraw @s ["",{"text":"CONSOLE:","bold":true,"color":"gold"},{"text":" removed ","bold":false,"italic":true,"color":"gold"},{"text":"1","bold":true,"italic":true,"color":"dark_green"},{"text":" interaction entity!","bold":false,"italic":true,"color":"gold"}]

# Runs the error message if the number of linked interaction entities is < 1
execute if score $count otcInteract matches 0 run tellraw @s ["",{"text":"ERROR: ","bold":true,"color":"dark_red"},{"text":"there are no nearby interaction entities \u0020","italic":true,"bold":false,"color":"dark_red"}]

# Kills the closest linked interaction entity 
kill @e[type=interaction,predicate=otc_player:match_id,sort=nearest,limit=1]
