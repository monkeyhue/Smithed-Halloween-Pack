scoreboard players add @s monkeyhue.time1 1

#--- Mobs ---#
execute if entity @s[tag=hlw.witch_spook] run function hlw:entity/witch_spook/main
execute if entity @s[tag=hlw.spook] run function hlw:entity/spook/main
execute if entity @s[tag=hlw.kaboomer] run function hlw:entity/kaboomer/main
execute if entity @s[tag=hlw.scarecrow] run function hlw:entity/scarecrow/main

#--- Bosses ---#

#--- Non-mob Entities ---#
execute if entity @s[tag=hlw.prj] run function hlw:entity/prj/main
execute if entity @s[tag=hlw.temp] run function hlw:entity/temp/main