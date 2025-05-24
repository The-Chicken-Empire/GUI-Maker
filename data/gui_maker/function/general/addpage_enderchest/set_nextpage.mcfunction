#> gui_maker:general/addpage_enderchest/set_nextpage
#
# @within gui_maker:general/addpage_enderchest**

# ループ用
scoreboard players add $gui_maker.general/addpage_enderchest.nextpage gui_maker 1

# 空いてるページ番号を探す
# 既に使用されているページ番号ならもう一度この関数を呼び出して1つ大きいページ番号を調べる
execute store result storage gui_maker: pages.enderchest.nextpage int 1 run scoreboard players get $gui_maker.general/addpage_enderchest.nextpage gui_maker
function gui_maker:general/addpage_enderchest/set_nextpage_checkdupe with storage gui_maker: pages.enderchest
