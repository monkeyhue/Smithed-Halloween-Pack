#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players set @s monkeyhue.tempAI 2

scoreboard players add @s monkeyhue.time2 1

execute positioned ~ ~-1 ~ facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned ~ ~1 ~ if block ^ ^1.5 ^0.5 #hlw:unsolid run teleport @s ^ ^ ^0.1 ~ ~ 
execute positioned ~ ~-1 ~ facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned ~ ~1 ~ if block ~ ~-1 ~ #hlw:unsolid_nofluids run teleport @s ^ ^-0.05 ^0.1 ~ ~ 
execute positioned ~ ~-1 ~ facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned ~ ~1 ~ unless block ~ ~ ~ #hlw:unsolid_nofluids run teleport @s ^ ^0.1 ^0.1 ~ ~

execute if score @s monkeyhue.time2 matches 40.. if entity @p[distance=..10,gamemode=!creative,gamemode=!spectator] positioned ~ ~2 ~ run function hlw:entity/scarecrow/event/sees_player
execute unless entity @p[distance=..32,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 1