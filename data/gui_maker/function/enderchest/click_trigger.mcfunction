#> gui_maker:enderchest/click_trigger
# チェスト内のどのアイテムがなくなったかを確認
# @within gui_maker:enderchest/check

# どのアイテムがクリックされたかを確認する
function gui_maker:enderchest/get_clickitem

# 取得したアイテムのコマンドを実行する
data modify storage gui_maker: args.run_trigger set from storage gui_maker: return.enderchest/get_clickitem.components.minecraft:custom_data.gui_maker
function gui_maker:system/run_trigger

# GUI表示をリセットする
function gui_maker:enderchest/refresh