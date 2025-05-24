#> gui_maker:general/addpage_enderchest
#
# with blockでチェストを指定して実行
# 新たにページを登録する
#
# @user
# @private

$data modify storage gui_maker: tmp.general/addpage_enderchest.newpage.Items set value $(Items)

# ページ番号を設定
execute store result storage gui_maker: tmp.general/addpage_enderchest.newpage.id int 1 run data get storage gui_maker: pages.enderchest.nextpage

# デフォルトのページ設定を適用
function gui_maker:general/addpage_enderchest/set_default_page_setting with storage gui_maker: tmp.general/addpage_enderchest.newpage

# newpageの番号を設定
execute store result score $gui_maker.general/addpage_enderchest.nextpage gui_maker run data get storage gui_maker: pages.enderchest.nextpage
function gui_maker:general/addpage_enderchest/set_nextpage

# ページを追加
data modify storage gui_maker: pages.enderchest.pages append from storage gui_maker: tmp.general/addpage_enderchest.newpage

# 追加内容の表示
tellraw @a "新しいGUIページを追加しました"
tellraw @a ["ページ番号 : ",{"nbt":"tmp.general/addpage_enderchest.newpage.id","storage":"gui_maker:"},"  タグ : ",{"nbt":"tmp.general/addpage_enderchest.newpage.tag","storage":"gui_maker:"}]

# リセット
data remove storage gui_maker: tmp.general/addpage_enderchest
scoreboard players reset $gui_maker.general/addpage_enderchest.nextpage

#>
# @private
#define score_holder $gui_maker.general/addpage_enderchest.nextpage