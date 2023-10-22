#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 6 on passengers run data modify entity @s item.tag.Damage set value 4
execute unless score @s monkeyhue.tempAI matches 6 run scoreboard players set #monkeyhue.animLength monkeyhue.objmc1 20
execute unless score @s monkeyhue.tempAI matches 6 on passengers run function hlw:entity/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 6 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 6 run scoreboard players set @s monkeyhue.tempAI 6

scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 1 run spreadplayers ~ ~ 4 12 true @s
execute if score @s monkeyhue.time2 matches 2 positioned over motion_blocking_no_leaves run tp @s ~ ~2 ~

execute if score @s monkeyhue.time2 matches 17.. run scoreboard players set @s monkeyhue.entity.AIState 0
