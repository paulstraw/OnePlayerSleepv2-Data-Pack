##########################################
# Author: MadCat (youtube.com/MadCatHoG) 
# Date: Apr 15, 2018
# Version: 2.2
# Minecraft Version 1.13
# Description:
# Actions to kick a player out of bed.
# Messages to kicked players.
##########################################

scoreboard players set @a ops.kickBed 0
execute as @a[nbt={Sleeping:1b},scores={ops.sleep=1..}] at @s run summon minecraft:snowball ~ ~2 ~
execute if score kick_message ops.sleep matches 1 run tellraw @a[scores={ops.sleep=1..}] ["",{"selector":"@s","italic":true,"color":"gray"},{"text":" woke you up","italic":true,"color":"gray"}]
