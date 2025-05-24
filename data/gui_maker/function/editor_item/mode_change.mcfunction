#> gui_maker:editor_item/mode_change
#  advancementから実行
# @private

stopsound @s * ambient.basalt_deltas.additions

# モード変更 
function gui_maker:general/mode_change

# 実績削除
advancement revoke @s only gui_maker:editor_item/mode_change