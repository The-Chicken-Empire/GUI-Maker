#> gui_maker:editor_item/set_pagetag
#
# 現在のページに指定したタグをつける
#
# @within gui_maker:editor_item/written_book

# 本を元に戻す
item replace entity @s weapon.mainhand with writable_book[enchantment_glint_override=true,custom_data={gui_maker:{editor_item:6b}},item_name="ページタグ登録",lore=[{"color":"white","italic":false,"text":"現在のページのタグ名を設定します"},{"color":"white","italic":false,"text":"本文に入れた文字列が設定するタグとなります"}]] 1

# 引数を設定
data modify storage gui_maker: tmp.tag set from storage gui_maker: tmp.title
execute store result storage gui_maker: tmp.id int 1 run scoreboard players get @s gui_maker.enderchest.page

# 現在ページにタグを設定
function gui_maker:general/set_pagetag with storage gui_maker: tmp