#> gui_maker:general/move_page_by_tag
#
# ページタグを指定して指定したページに移動する
# functionの引数としてtag:<指定のページタグ>
#
# @public
# @user

# タグの存在を確認
$execute unless data storage gui_maker: pages.enderchest.pages[{tag:"$(tag)"}] run tellraw @a {"color":"red","text":"指定したページが存在しません！/ tag : $(tag)"}
$execute unless data storage gui_maker: pages.enderchest.pages[{tag:"$(tag)"}] run return -1

# ページの中身を消去
function gui_maker:enderchest/clear_all

# 存在すればページを変更
$execute store result score @s gui_maker.enderchest.page run data get storage gui_maker: pages.enderchest.pages[{tag:"$(tag)"}].id

# 画面の更新
function gui_maker:general/refresh_all