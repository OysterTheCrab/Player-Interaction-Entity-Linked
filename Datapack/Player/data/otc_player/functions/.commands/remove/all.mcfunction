#> otc_player:.commands/remove/all
# Removes all interactions 

# Stores the count of interaction entitys
execute store result score $count otcInteract if entity @e[type=interaction,tag=otcId]

# Runs the success message if the number of interaction entities is > 1
execute if score $count otcInteract matches 1.. run tellraw @s ["",{"text":"CONSOLE:","bold":true,"color":"gold"},{"text":" removed ","bold":false,"italic":true,"color":"gold"},{"score":{"name":"$count","objective":"otcInteract"},"bold":true,"italic":true,"color":"dark_green"},{"text":" interaction entities!","bold":false,"italic":true,"color":"gold"}]

# Runs the error message if the number of interaction entities is < 1
execute if score $count otcInteract matches 0 run tellraw @s ["",{"text":"ERROR: ","bold":true,"color":"dark_red"},{"text":"there are no interaction entities left to remove \u0020","italic":true,"bold":false,"color":"dark_red"}]

# Kills the interaction entities 
kill @e[type=interaction,tag=otcId]
