scoreboard objectives add otcInteract dummy

# Assigns an id to the player if they do not already have one
execute as @a[tag=!otcInteract] run function otc_player:id

# First time user message
execute as @a[tag=!otcUser] run function otc_player:new_user
