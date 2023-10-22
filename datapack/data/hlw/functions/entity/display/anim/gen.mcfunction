scoreboard players operation %temp monkeyhue.objmc1 = %monkeyhue.gametime monkeyhue.temp1

# Get Autoanimation Frame
scoreboard players operation %temp monkeyhue.objmc1 %= #24000 monkeyhue.temp1
scoreboard players operation %temp monkeyhue.objmc1 %= #monkeyhue.animLength monkeyhue.objmc1

#Append frame to G
scoreboard players operation %temp monkeyhue.objmc1 *= #256 monkeyhue.temp1
scoreboard players operation %sum monkeyhue.objmc1 += %temp monkeyhue.objmc1

#Account for Hurt Time
execute on vehicle if score @s monkeyhue.entity.hurtTime matches 0.. run scoreboard players add %sum monkeyhue.objmc1 1

#Update Data
execute store result entity @s item.tag.display.color int 1 run scoreboard players get %sum monkeyhue.objmc1
scoreboard players reset %temp monkeyhue.objmc1
scoreboard players reset %sum monkeyhue.objmc1
scoreboard players reset #monkeyhue.animLength monkeyhue.objmc1