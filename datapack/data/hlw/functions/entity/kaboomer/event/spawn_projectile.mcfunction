#Initial Data Getting
data merge entity @s {Duration:2,Tags:["hlw.temp","hlw.t.throw_direction"]}
data modify storage hlw:temp throw.pos1 set from entity @s Pos
execute facing entity @p[gamemode=!creative,gamemode=!survival] feet run tp @s ~ ~ ~ ~ ~
teleport @s ^ ^0.05 ^0.1
data modify storage hlw:temp throw.pos2 set from entity @s Pos

summon snowball ~ ~ ~ {Tags:["hlw.t.prj","new"],Passengers:[{id:"minecraft:item_display",Tags:["monkeyhue.entity","hlw","hlw.prj","hlw.prj.kaboomer"],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:0},CustomModelData:6532002}}}],Item:{id:"minecraft:egg",Count:1b,tag:{CustomModelData:6532000}}}
execute as @e[type=snowball,tag=hlw.t.prj,tag=new,limit=1,distance=..3] run function hlw:entity/kaboomer/event/apply_motion

