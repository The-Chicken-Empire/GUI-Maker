#> gui_maker:load
#
# @within minecraft:load

#>
# 表示するエンダーチェストのページ番号を記憶するスコア
# このスコアの変更後にgui_maker:enderchest/refleshを利用してページを更新する.
# @public
scoreboard objectives add gui_maker.enderchest.page dummy

#>
# 表示するインベントリのページ番号を記憶するスコア
# このスコアの変更後にgui_maker:inventory/refleshを利用してページを更新する.
# @public
scoreboard objectives add gui_maker.inventory.page dummy

#>
# 汎用スコア
# @within gui_maker:*
scoreboard objectives add gui_maker dummy

forceload add 0 0

execute unless data storage gui_maker: {} run function gui_maker:init