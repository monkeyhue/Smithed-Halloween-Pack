#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 5 on passengers run data modify entity @s item.tag.Damage set value 3
execute unless score @s monkeyhue.tempAI matches 5 run scoreboard players set #monkeyhue.animLength monkeyhue.objmc1 24
execute unless score @s monkeyhue.tempAI matches 5 on passengers run function hlw:entity/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 5 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 5 run scoreboard players set @s monkeyhue.tempAI 5

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 16 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time2 matches 18 run particle snowflake ~ ~0.8 ~ 0.1 0.1 0.1 0.1 10

execute if score @s monkeyhue.time2 matches 22.. run scoreboard players set @s monkeyhue.entity.AIState 6
