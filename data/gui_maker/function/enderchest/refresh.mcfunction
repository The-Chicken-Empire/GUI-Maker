#> gui_maker:enderchest/refresh
# エンダーチェストのGUI表示をリセットする
# @within gui_maker:*

# 何かの間違いでコンテナが残っているとバグるので一応kill
execute as @e[tag=gui_maker.container,type=chest_minecart] run data modify entity @s Items set value []
kill @e[tag=gui_maker.container,type=chest_minecart]

# 表示したい中身を取得
function gui_maker:enderchest/get_page

# 中に入れたアイテムを消す設定であれば消去
execute if data storage gui_maker: return.enderchest/get_page{delete_items:1b} run function gui_maker:enderchest/clear_all

# ループ処理でエンダーチェストの中身を書き換える
summon chest_minecart 0 -100 0 {NoGravity:1b,Invulnerable:1b,Tags:["gui_maker.container"]}
execute as @e[tag=gui_maker.container,type=chest_minecart] run data modify entity @s Items set from storage gui_maker: return.enderchest/get_page.Items
execute store result score $gui_maker.enderchest/refresh.loop gui_maker run data get storage gui_maker: return.enderchest/get_page.Items
execute unless score $gui_maker.enderchest/refresh.loop gui_maker matches 0 run function gui_maker:enderchest/refresh/set_item_loop with entity @e[tag=gui_maker.container,type=chest_minecart,limit=1] Items[0]

# コンテナをキル
execute as @e[tag=gui_maker.container,type=chest_minecart] run data modify entity @s Items set value []
kill @e[tag=gui_maker.container,type=chest_minecart]

# リセット
scoreboard players reset $gui_maker.enderchest/refresh.loop gui_maker