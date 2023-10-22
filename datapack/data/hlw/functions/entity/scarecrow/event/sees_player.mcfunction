execute positioned ~-1 ~-1 ~-1 if entity @p[dx=1,dy=1,dz=1,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 3
scoreboard players add @s monkeyhue.temp1 1
execute if score @s monkeyhue.temp1 matches ..9 facing entity @p eyes positioned ^ ^ ^1 if block ~ ~ ~ #hlw:unsolid_nofluids run function hlw:entity/scarecrow/event/sees_player
execute if score @s monkeyhue.temp1 matches 10.. run scoreboard players reset @s monkeyhue.temp1
