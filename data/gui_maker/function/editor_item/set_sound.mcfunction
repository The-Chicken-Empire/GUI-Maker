#> gui_maker:editor_item/set_sound
#
# sound_functionに設定された内容を代入
#
# @within gui_maker:editor_item/written_book

# 本を元に戻す
item replace entity @s weapon.mainhand with writable_book[enchantment_glint_override=true,custom_data={gui_maker:{editor_item:5b}},item_name="クリック音用関数登録",lore=[{"color":"white","italic":false,"text":"オフハンドのアイテムにクリック時に実行する関数を設定します"},{"color":"white","italic":false,"text":"本文に入れた関数のパスが実行するfunctionとなります"},]] 1

# オフハンドにアイテムを持っていないなら関数の実行を終了
execute unless data entity @s equipment.offhand run return -1

# 引数を設定
data modify storage gui_maker: tmp.function set from storage gui_maker: tmp.title

# オフハンドアイテムに関数を設定
function gui_maker:general/set_sound_function with storage gui_maker: tmp