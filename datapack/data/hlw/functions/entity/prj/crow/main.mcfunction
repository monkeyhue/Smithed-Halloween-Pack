execute on passengers on passengers run function hlw:entity/prj/crow/hitbox

execute positioned ~ ~0.6 ~ facing entity @p[gamemode=!creative,gamemode=!spectator] eyes positioned ~ ~-0.6 ~ run tp @s ^ ^ ^0.5 ~ ~
execute rotated as @s on passengers run tp @s ~ ~ ~ ~ ~

execute unless block ~ ~0.5 ~ #hlw:unsolid run function hlw:entity/prj/crow/hit
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator] positioned ~0.5 ~0.5 ~0.5 run function hlw:entity/prj/crow/hit_player
execute if score @s monkeyhue.time1 matches 80.. run function hlw:entity/prj/crow/hit
