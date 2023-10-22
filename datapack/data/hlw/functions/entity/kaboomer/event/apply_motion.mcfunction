execute store result score #hlw.throw1 monkeyhue.temp1 run data get storage hlw:temp throw.pos1[0] 1000
execute store result score #hlw.throw1 monkeyhue.temp2 run data get storage hlw:temp throw.pos1[1] 1000
execute store result score #hlw.throw1 monkeyhue.temp3 run data get storage hlw:temp throw.pos1[2] 1000

execute store result score #hlw.throw2 monkeyhue.temp1 run data get storage hlw:temp throw.pos2[0] 1000
execute store result score #hlw.throw2 monkeyhue.temp2 run data get storage hlw:temp throw.pos2[1] 1000
execute store result score #hlw.throw2 monkeyhue.temp3 run data get storage hlw:temp throw.pos2[2] 1000

data merge storage hlw:temp {throw:{out:[0.0d,0.0d,0.0d]}}
scoreboard players operation #hlw.throw2 monkeyhue.temp1 -= #hlw.throw1 monkeyhue.temp1
function hlw:technical/rng/200_mid
scoreboard players operation #hlw.throw2 monkeyhue.temp1 += @s monkeyhue.rng.out
scoreboard players operation #hlw.throw2 monkeyhue.temp2 -= #hlw.throw1 monkeyhue.temp2
function hlw:technical/rng/100_mid
scoreboard players operation #hlw.throw2 monkeyhue.temp2 += @s monkeyhue.rng.out
scoreboard players operation #hlw.throw2 monkeyhue.temp3 -= #hlw.throw1 monkeyhue.temp3
function hlw:technical/rng/200_mid
scoreboard players operation #hlw.throw2 monkeyhue.temp3 += @s monkeyhue.rng.out

execute store result storage hlw:temp throw.out[0] double 0.002 run scoreboard players get #hlw.throw2 monkeyhue.temp1
execute store result storage hlw:temp throw.out[1] double 0.002 run scoreboard players get #hlw.throw2 monkeyhue.temp2
execute store result storage hlw:temp throw.out[2] double 0.002 run scoreboard players get #hlw.throw2 monkeyhue.temp3

data modify entity @s Motion set from storage hlw:temp throw.out
tag @s remove new