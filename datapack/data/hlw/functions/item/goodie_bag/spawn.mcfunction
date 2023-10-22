stopsound @s neutral minecraft:entity.snowball.throw
execute as @e[type=snowball,nbt={Item:{tag:{hlw:{}}}},limit=1,sort=nearest] run function hlw:item/goodie_bag/items
scoreboard players reset @s hlw.goodie_bag