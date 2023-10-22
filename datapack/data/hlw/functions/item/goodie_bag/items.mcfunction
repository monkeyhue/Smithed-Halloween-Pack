execute store result score @s monkeyhue.temp1 run data get entity @s Item.tag.CustomModelData
execute if score @s monkeyhue.temp1 matches 6532001 run loot spawn ~ ~0.5 ~ loot hlw:loot/goodie_bag
execute if score @s monkeyhue.temp1 matches 6532002 run loot spawn ~ ~0.5 ~ loot hlw:loot/gourdlord_bag
playsound minecraft:block.sweet_berry_bush.pick_berries player @a ~ ~ ~ 1 0.8
playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 1 1
kill @s