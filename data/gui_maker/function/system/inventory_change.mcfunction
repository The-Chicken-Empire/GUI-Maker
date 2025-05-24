#> gui_maker:system/inventory_change
#
# @private

# displayアイテムは一度削除
execute if entity @s[tag=!gui_maker.edit] run function gui_maker:system/clear_displayitem

#guiの更新
function gui_maker:general/refresh_all

#リセット処理
advancement revoke @s only gui_maker:inventory_change