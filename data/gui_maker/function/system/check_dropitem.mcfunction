#> gui_maker:system/check_dropitem
# trigger_itemのドロップを検知しfunctionを実行する
# @within gui_maker:tick

# function実行
data modify storage gui_maker: args.run_trigger set from entity @s Item.components.minecraft:custom_data.gui_maker
execute on origin if entity @s[tag=!gui_maker.edit] run function gui_maker:system/run_trigger

# ページの更新
execute on origin if entity @s[tag=!gui_maker.edit] run function gui_maker:enderchest/refresh

# 初期化処理
tag @a remove gui_maker.trigger_thrower
data remove storage gui_maker: tmp.check_drop 

# アイテムを消去
kill @s
