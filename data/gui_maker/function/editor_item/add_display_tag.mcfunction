#> gui_maker:editor_item/add_display_tag
#  advancementから実行
# @private

# アイテム消費音を消す
stopsound @s * ambient.basalt_deltas.additions

# 実績削除
advancement revoke @s only gui_maker:editor_item/add_display_tag

# オフハンドにアイテムを持っていないなら関数の実行を終了
execute unless data entity @s equipment.offhand run return -1

# displayタグを付与または消去
execute if data entity @s equipment.offhand.components.minecraft:custom_data.gui_maker{display_only:1b} run tag @s add gui_maker.remove_display_tag

execute if entity @s[tag=gui_maker.remove_display_tag] run item modify entity @s weapon.offhand gui_maker:set_display_only_0
execute if entity @s[tag=!gui_maker.remove_display_tag] run item modify entity @s weapon.offhand gui_maker:set_display_only_1

tellraw @s[tag=gui_maker.remove_display_tag] "オフハンドアイテムのdisplayタグを消去しました"
tellraw @s[tag=!gui_maker.remove_display_tag] "オフハンドアイテムにdisplayタグを付与しました"

# リセット
tag @s[tag=gui_maker.remove_display_tag] remove gui_maker.remove_display_tag

#>
# @private
#define tag gui_maker.remove_display_tag
