data modify storage hlw:temp blockItem set from entity @s Inventory.[{tag:{hlw:{isBlock:1b}}}]
clear @s minecraft:structure_block{hlw:{isBlock:1b}} 1
data modify storage hlw:temp blockItem.tag.hlw.isBlock set value 0b
loot give @s loot hlw:3d_helmet/to_helmet
data remove storage hlw:temp blockItem