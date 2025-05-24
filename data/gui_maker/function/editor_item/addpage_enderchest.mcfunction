#> gui_maker:editor_item/addpage_enderchest
# advancementから実行
# @private

# アイテム消費音を消す
stopsound @s * ambient.basalt_deltas.additions

# 実績削除
advancement revoke @s only gui_maker:editor_item/addpage_enderchest

# チェストの上に立っていないなら実行を中止
execute unless block ~ ~ ~ chest run tellraw @s {"color":"red","italic":false,"text":"チェストの上に立って実行してください！"}
execute unless block ~ ~ ~ chest run return -1

# ページ追加
function gui_maker:general/addpage_enderchest with block ~ ~ ~