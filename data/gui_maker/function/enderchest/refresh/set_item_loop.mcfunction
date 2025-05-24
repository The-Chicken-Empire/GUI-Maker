#> gui_maker:enderchest/refresh/set_item_loop
# エンダーチェストにアイテムをセット
# @within gui_maker:enderchest/refresh

# セット
$item replace entity @s enderchest.$(Slot) from entity @e[tag=gui_maker.container,type=chest_minecart,limit=1] container.$(Slot)

#ループ処理
scoreboard players remove $gui_maker.enderchest/refresh.loop gui_maker 1
data remove entity @e[tag=gui_maker.container,type=chest_minecart,limit=1] Items[0]
execute unless score $gui_maker.enderchest/refresh.loop gui_maker matches 0 run function gui_maker:enderchest/refresh/set_item_loop with entity @e[tag=gui_maker.container,type=chest_minecart,limit=1] Items[0]