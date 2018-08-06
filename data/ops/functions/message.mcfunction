##########################################
# Author: MadCat (youtube.com/MadCatHoG) 
# Date: Jul 1, 2018
# Version: 2.2
# Minecraft Version 1.13
# Description:
# Shows a random message when a Player
# goes to sleep
##########################################

execute if score sleep_message ops.sleep matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" went to bed","color":"blue","clickEvent":{"action":"run_command","value":"/trigger ops.kickBed"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Wake up!","color":"aqua"}]}}}]
