execute if score @s monkeyhue.time1 matches ..4 facing entity @p eyes run tp @s ^ ^ ^0.7 ~ ~
execute if score @s monkeyhue.time1 matches 5.. run tp @s ^ ^ ^1 ~ ~
execute rotated as @s on passengers run tp @s ~ ~ ~ ~ ~

execute unless block ~ ~0.5 ~ #hlw:unsolid run function hlw:entity/prj/spook_spell/hit
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator] positioned ~0.5 ~0.5 ~0.5 run function hlw:entity/prj/spook_spell/hit_player
execute if score @s monkeyhue.time1 matches 60.. run function hlw:entity/prj/spook_spell/hit
