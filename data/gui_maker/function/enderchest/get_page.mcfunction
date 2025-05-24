#> gui_maker:enderchest/get_page
# 表示しているエンダーチェストページを取得
# @within gui_maker:enderchest/*

#前の返り値をリセット
data remove storage gui_maker: return.enderchest/get_page

# 現在のページ番号を取得
execute store result storage gui_maker: tmp.enderchest/check.page byte 1 run scoreboard players get @s gui_maker.enderchest.page

# 表示されているはずのページ内容を取得
function gui_maker:enderchest/get_page/get with storage gui_maker: tmp.enderchest/check

# リセット
data remove storage gui_maker: tmp.enderchest/check