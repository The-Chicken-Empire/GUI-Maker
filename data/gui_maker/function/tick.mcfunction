#> gui_maker:tick
#
# @within minecraft:tick

# guiアイテムのドロップを検知し、プレイヤごとに操作
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{gui_maker:{trigger_item:1b}}}}}] run function gui_maker:system/check_dropitem

# エンダーチェスト内のアイテムのクリックを検知し実行(シフトクリックの処理もやってる)
execute as @a[tag=!gui_maker.edit] run function gui_maker:enderchest/check

# display専用アイテムの処理
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{gui_maker:{display_only:1b}}}}}] on origin run function gui_maker:general/refresh_all
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{gui_maker:{display_only:1b}}}}}]

# インベントリ変更時に更新
execute as @a[advancements={gui_maker:inventory_change=true}] run function gui_maker:system/inventory_change