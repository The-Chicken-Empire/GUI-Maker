#> gui_maker:enderchest/get_clickitem
# チェスト内のどのアイテムがなくなったかを確認
# @within gui_maker:enderchest/click_trigger

# 返り値のリセット
data remove storage gui_maker: return.enderchest/get_clickitem

# 何かの間違いでコンテナが残っているとバグるので一応kill
execute as @e[tag=gui_maker.container,type=chest_minecart] run data modify entity @s Items set value []
kill @e[tag=gui_maker.container,type=chest_minecart]

# 表示したい中身を取得
function gui_maker:enderchest/get_page

# ループ処理でアイテムを取得する
summon chest_minecart 0 -100 0 {NoGravity:1b,Invulnerable:1b,Tags:["gui_maker.container"]}
execute as @e[tag=gui_maker.container,type=chest_minecart] run data modify entity @s Items set from storage gui_maker: return.enderchest/get_page.Items
execute store result score $gui_maker.enderchest/get_clickitem.loop gui_maker run data get storage gui_maker: return.enderchest/get_page.Items
execute unless score $gui_maker.enderchest/get_clickitem.loop gui_maker matches 0 run function gui_maker:enderchest/get_clickitem/loop with entity @e[tag=gui_maker.container,type=chest_minecart,limit=1] Items[0]

# コンテナをキル
execute as @e[tag=gui_maker.container,type=chest_minecart] run data modify entity @s Items set value []
kill @e[tag=gui_maker.container,type=chest_minecart]

# リセット
scoreboard players reset $gui_maker.enderchest/get_clickitem.loop gui_maker
data remove storage gui_maker: tmp.enderchest/get_clickitem