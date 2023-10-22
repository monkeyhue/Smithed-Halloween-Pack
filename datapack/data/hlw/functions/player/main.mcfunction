execute if predicate hlw:has_3dhat run function hlw:player/helmet/block_to_helmet

execute if score @s hlw.goodie_bag matches 1.. run function hlw:item/goodie_bag/spawn
execute if score @s hlw.spawnedMob matches 1.. run scoreboard players remove @s hlw.spawnedMob 1