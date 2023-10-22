#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 0 on passengers run data modify entity @s item.tag.Damage set value 0
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set #monkeyhue.animLength monkeyhue.objmc1 40
execute unless score @s monkeyhue.tempAI matches 0 on passengers run function hlw:entity/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 0 run function hlw:technical/rng/100
execute unless score @s monkeyhue.tempAI matches 0 store result score @s monkeyhue.time2 run scoreboard players get @s monkeyhue.rng.out
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set @s monkeyhue.tempAI 0

scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 200.. run scoreboard players set @s monkeyhue.entity.AIState 1

execute if entity @p[distance=..32,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 2

