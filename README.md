# Player/Interaction Entity Linked
 A map makers tool using the new interaction entity

# Thanks for Using my Pack!
For some common information use the command ```/function otc_player:.info/page_1```

If you have any other questions feel free to join the Minecraft Commands Discord and ask! (https://discord.gg/QAFXFtZ)

# How it Works
- When a player joins the world, they are given a unique id. This id is then used to link said player to an interaction entity. The interaction entity is given the same id as the player who summons it. 

# Interaction Entity Outputs
* the interaction entites have 4 different output possibilities

- **Interact (linked entity):** This output is ran when the player with the same id interacts with the interaction entity

- **Interact (nonlinked entity):** This output is ran when the player with a different id interacts with the interaction entity

- **Attack (linked entity):** This output is ran when the player with the same id attacks the interaction entity

- **Attack (nonlinked entity):** This output is ran when the player with a different id attacks the interaction entity

# Manually Assigning Id's 
- This is useful, particularly for mapmakers. You are able to manually assign/change the id of any player/interaction entity. 

- You can use the command ```/scoreboard players set @e[type=interaction,tag=otcInteraction,limit=1,sort=nearest] otcId <id_number>``` to change the id of the closest interaction entity

- For players you can use the same command but specifying for a player, not an entity 

# Modifying Output Events: 
- You are able to change what happens during each of the output events by modifying the output's function in the datapack 

- **Interact (linked entity):** ```Player/data/otc_player/functions/interact/reward.mcfunction```

- **Interact (nonlinked entity):** ```Player/data/otc_player/functions/interact/error.mcfunction```

- **Attack (linked entity):** ```Player/data/otc_player/functions/attack/reward.mcfunction```

- **Attack (nonlinked entity):** ```Player/data/otc_player/functions/attack/error.mcfunction```

# Changing Interaction Entity Size:
- In the default pack, the size of the interaction entities are set to 1x1. However, this can be changed.

- To change the size of the entity you can modify the summon function in the datapack ```Player/data/otc_player/.summon.mcfunction```

- The variables you will want to modify in the function is the ```width:<size>f``` and the ```height:<size>f```

# Removing Interaction Entities:
 - There are 4 different commands that can be ran to remove the entities of this pack

 - ```/function otc_player:.remove/closest``` | will remove the closest interaction entity
 
- ```/function otc_player:.remove/closest_linked```| will remove the closest linked interaction entity

- ```/function otc_player:.remove/all``` | will remove the all interaction entities in this pack

- ```/function otc_player:.remove/all_linked``` | will remove all linked interaction entities
