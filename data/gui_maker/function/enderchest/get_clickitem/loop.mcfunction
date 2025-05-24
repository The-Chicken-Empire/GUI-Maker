#> gui_maker:enderchest/get_clickitem/loop
# 
# @within gui_maker:enderchest/get_clickitem

$data modify storage gui_maker: tmp.enderchest/get_clickitem.success set from entity @s EnderItems[{Slot:$(Slot)b}]

execute store success score $gui_maker.enderchest/get_clickitem/loop.success gui_maker run data modify storage gui_maker: tmp.enderchest/get_clickitem.success set from entity @e[tag=gui_maker.container,type=chest_minecart,limit=1] Items[0]

# 変更に成功した場合。trigger_itemであればそのアイテムデータを返り値としてループを抜ける
execute if score $gui_maker.enderchest/get_clickitem/loop.success gui_maker matches 1 if data storage gui_maker: tmp.enderchest/get_clickitem.success.components.minecraft:custom_data.gui_maker{trigger_item:1b} run data modify storage gui_maker: return.enderchest/get_clickitem set from entity @e[tag=gui_maker.container,type=chest_minecart,limit=1] Items[0]
execute if score $gui_maker.enderchest/get_clickitem/loop.success gui_maker matches 1 if data storage gui_maker: tmp.enderchest/get_clickitem.success.components.minecraft:custom_data.gui_maker{trigger_item:1b} run return 0

# 失敗の場合。ループを続ける
scoreboard players remove $gui_maker.enderchest/get_clickitem.loop gui_maker 1
data remove entity @e[tag=gui_maker.container,type=chest_minecart,limit=1] Items[0]
function gui_maker:enderchest/get_clickitem/loop with entity @e[tag=gui_maker.container,type=chest_minecart,limit=1] Items[0]
