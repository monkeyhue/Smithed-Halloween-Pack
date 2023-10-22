data modify storage hlw:temp headItem set from entity @s Inventory[{Slot:103b}]
data modify storage hlw:temp headItem.tag.hlw.isBlock set value 1b
data remove storage hlw:temp headItem.Slot
loot replace entity @s armor.head loot hlw:3d_helmet/to_block
#data remove storage hlw:temp headItem
advancement revoke @s only hlw:zzz/helmet_to_block