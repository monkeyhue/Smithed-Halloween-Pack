#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 2 run function hlw:technical/rng/100
execute unless score @s monkeyhue.tempAI matches 2 store result score @s monkeyhue.time2 run scoreboard players get @s monkeyhue.rng.out
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players set @s monkeyhue.tempAI 2

scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 240.. run scoreboard players set @s monkeyhue.entity.AIState 5

execute positioned ~ ~-1 ~ facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned ~ ~1 ~ if block ^ ^ ^0.15 #hlw:unsolid run teleport @s ^ ^ ^0.15 ~ ~ 
execute positioned ~ ~-1 ~ facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned ~ ~1 ~ if block ~ ~-3 ~ #hlw:unsolid_nofluids run teleport @s ^ ^-0.05 ^0.15 ~ ~ 
execute positioned ~ ~-1 ~ facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned ~ ~1 ~ unless block ~ ~-1 ~ #hlw:unsolid_nofluids run teleport @s ^ ^0.1 ^0.15 ~ ~

execute if entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 3
execute unless entity @p[distance=..32,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 1