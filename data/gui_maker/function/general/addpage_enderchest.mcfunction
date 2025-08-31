#> gui_maker:general/addpage_enderchest
#
# gui_maker: input.addpage_enderchestにItems, tag, delete_items, is_individuallyを指定して実行する
# gui_maker: input.addpage_enderchestのshowresult を1bにすると登録結果をchatに出力する
# 新たにページを登録する
#
# @user
# @private

# ページデータを設定
execute if data storage gui_maker: input.addpage_enderchest.Items run data modify storage gui_maker: tmp.general/addpage_enderchest.newpage.Items set from storage gui_maker: input.addpage_enderchest.Items

# デフォルトのページ設定を適用
function gui_maker:general/addpage_enderchest/set_default_page_setting with storage gui_maker: pages.enderchest

# 引数で設定されていれば上書き
execute if data storage gui_maker: input.addpage_enderchest.tag run data modify storage gui_maker: tmp.general/addpage_enderchest.newpage.tag set from storage gui_maker: input.addpage_enderchest.tag

execute if data storage gui_maker: input.addpage_enderchest.delete_items run data modify storage gui_maker: tmp.general/addpage_enderchest.newpage.delete_items set from storage gui_maker: input.addpage_enderchest.delete_items

execute if data storage gui_maker: input.addpage_enderchest.is_individually run data modify storage gui_maker: tmp.general/addpage_enderchest.newpage.is_individually set from storage gui_maker: input.addpage_enderchest.is_individually

# ページ番号を設定
execute store result storage gui_maker: tmp.general/addpage_enderchest.newpage.id int 1 run data get storage gui_maker: pages.enderchest.nextpage

# newpageの番号を設定
execute store result score $gui_maker.general/addpage_enderchest.nextpage gui_maker run data get storage gui_maker: pages.enderchest.nextpage
function gui_maker:general/addpage_enderchest/set_nextpage

# ページを追加
data modify storage gui_maker: pages.enderchest.pages append from storage gui_maker: tmp.general/addpage_enderchest.newpage

# 追加内容の表示
execute if data storage gui_maker: input.addpage_enderchest{showresult: 1b} run tellraw @a "新しいGUIページを追加しました"
execute if data storage gui_maker: input.addpage_enderchest{showresult: 1b} run tellraw @a ["ページ番号 : ",{"nbt":"tmp.general/addpage_enderchest.newpage.id","storage":"gui_maker:"},"  タグ : ",{"nbt":"tmp.general/addpage_enderchest.newpage.tag","storage":"gui_maker:"}]

# リセット
data remove storage gui_maker: tmp.general/addpage_enderchest
data remove storage gui_maker: input.addpage_enderchest
scoreboard players reset $gui_maker.general/addpage_enderchest.nextpage

#>
# @private
#define score_holder $gui_maker.general/addpage_from_alldata.nextpage