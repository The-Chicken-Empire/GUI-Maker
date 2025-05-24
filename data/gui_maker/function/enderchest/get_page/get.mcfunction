#> gui_maker:enderchest/get_page/get
# 表示されているはずのエンダーチェストの内容を取得
# @within gui_maker:enderchest/get_page

# 返り値を設定
$data modify storage gui_maker: return.enderchest/get_page set from storage gui_maker: pages.enderchest.pages[{id:$(page)}]

