#> gui_maker:general/set_pagetag
#
# 指定したエンダーチェストページにタグを設定する
# tagとidをキーに持つストレージをインプット
# @user
# @within gui_maker:editor_item/set_pagetag

# 重複していたら弾く
$execute if data storage gui_maker: pages.enderchest.pages[{tag:$(tag)}] run tellraw @a {"color":"red","text":"既にそのタグを持ったページが存在します！/ tag : $(tag)"}
$execute if data storage gui_maker: pages.enderchest.pages[{tag:$(tag)}] run return -1

# タグを設定
$data modify storage gui_maker: pages.enderchest.pages[{id:$(id)}].tag set value $(tag)

# 登録メッセージ
$tellraw @s "現在のページタグを$(tag)に設定しました"