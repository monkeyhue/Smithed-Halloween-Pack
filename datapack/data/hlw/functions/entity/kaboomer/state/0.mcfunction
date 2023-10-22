#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 0 on passengers run data modify entity @s item.tag.Damage set value 0
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set #monkeyhue.animLength monkeyhue.objmc1 24
execute unless score @s monkeyhue.tempAI matches 0 on passengers run function hlw:entity/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 0 run function hlw:technical/rng/100
execute unless score @s monkeyhue.tempAI matches 0 store result score @s monkeyhue.time2 run scoreboard players get @s monkeyhue.rng.out
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set @s monkeyhue.tempAI 0

scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 240.. run scoreboard players set @s monkeyhue.entity.AIState 1

#// Precautions to make sure there's no hovering or falling off edges or into holes
execute unless score @s monkeyhue.time5 matches 4.. if block ~ ~-0.32 ~ #hlw:unsolid run scoreboard players add @s monkeyhue.time5 1
execute if score @s monkeyhue.time5 matches 4 if block ~ ~-0.32 ~ #hlw:unsolid rotated as @s run function hlw:entity/kaboomer/event/begin_falling
execute if score @s monkeyhue.time5 matches 1.. unless block ~ ~-0.32 ~ #hlw:unsolid run scoreboard players reset @s monkeyhue.time5

execute if entity @p[distance=..24,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 1

