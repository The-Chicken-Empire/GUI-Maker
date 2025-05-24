#> gui_maker:general/addpage_enderchest/set_default_pagesetting
#
# @within gui_maker:general/addpage_enderchest/

# {tag : Page<ページ番号>}
$data modify storage gui_maker: tmp.general/addpage_enderchest.newpage.tag set value Page$(id)

# 画面更新の際にアイテムを設定していない位置に既に入っているアイテムを消すか
data modify storage gui_maker: tmp.general/addpage_enderchest.newpage.delete_items set value 1b

# ページを個別管理するか（選択内容を光らせるとかしたいなら要る）
# 現在未実装
data modify storage gui_maker: tmp.general/addpage_enderchest.newpage.is_individually set value 0b
