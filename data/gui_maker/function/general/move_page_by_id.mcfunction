#> gui_maker:general/move_page_by_id
#
# ページidを指定して指定したページに移動する
# functionの引数としてid:<指定のページ数>
#
# @public
# @user


# ページの存在を確認
$execute unless data storage gui_maker: pages.enderchest.pages[{id:$(id)}] run tellraw @a {"color":"red","text":"指定したページが存在しません！/ ページ番号 : $(id)"}
$execute unless data storage gui_maker: pages.enderchest.pages[{id:$(id)}] run return -1

# ページの中身を消去
function gui_maker:enderchest/clear_all

# ページを変更
$scoreboard players set @s gui_maker.enderchest.page $(id)

# 画面の更新
function gui_maker:general/refresh_all