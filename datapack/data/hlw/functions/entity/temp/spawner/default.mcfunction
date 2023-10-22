execute if score @s monkeyhue.time1 matches 1 run function hlw:technical/rng/100

execute if score @s monkeyhue.time1 matches 1 run spreadplayers ~ ~ 20 48 true @s
execute if score @s monkeyhue.time1 matches 2 positioned over motion_blocking_no_leaves run tp @s ~ ~ ~

execute if score @s monkeyhue.time1 matches 2 if score @s monkeyhue.rng.out matches 0..59 run function hlw:entity/spook/spawn
execute if score @s monkeyhue.time1 matches 2 if score @s monkeyhue.rng.out matches 60..91 run function hlw:entity/kaboomer/spawn
execute if score @s monkeyhue.time1 matches 2 if score @s monkeyhue.rng.out matches 92..99 run function hlw:entity/scarecrow/spawn

execute if score @s monkeyhue.time1 matches 2.. run kill @s