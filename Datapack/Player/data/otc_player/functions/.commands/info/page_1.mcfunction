#> otc_player:.commands/info/page_1
# Information page #1

tellraw @a ["",{"text":"Info Page 1:","bold":true},{"text":"\n\n"},{"text":"How it works: ","bold":true},{"text":"\n -When a player joins the world they are given a unique id. This id is then used to link said player to an\ninteraction entity. The interaction entity is given the same id as the player that uses the summon command. \n\n"},{"text":"click for next page","color":"yellow","clickEvent":{"action":"run_command","value":"/function otc_player:.commands/info/page_2"}}]