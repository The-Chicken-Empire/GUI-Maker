#> gui_maker:general/addpage_enderchest/set_nextpage_checkdupe
#
# @within gui_maker:general/addpage_enderchest/set_nextpage

# 既に登録されているページ番号なら番号を1増加し再度調べる
$execute if data storage gui_maker: pages.enderchest.pages{id:$(nextpage)} run function gui_maker:general/addpage_enderchest/set_nextpage
