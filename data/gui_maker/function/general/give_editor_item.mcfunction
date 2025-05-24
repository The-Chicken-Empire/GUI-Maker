#> gui_maker:general/give_editor_item
#
# 編集者用アイテムを与える
# @user
# @private

# モード変更
give @s redstone_torch[consumable={consume_seconds:0,sound:"ambient.basalt_deltas.additions",has_consume_particles:false},enchantment_glint_override=true,custom_data={gui_maker:{editor_item:1b}},item_name="モード変更",lore=[{"color":"white","italic":false,"text":"編集モード（GUIアイテムの機能を停止）と"},{"color":"white","italic":false,"text":"通常モードを切り替えます"}]] 1

# displayタグ付与
give @s item_frame[consumable={consume_seconds:0,sound:"ambient.basalt_deltas.additions",has_consume_particles:false},enchantment_glint_override=true,custom_data={gui_maker:{editor_item:2b}},item_name="displayタグ付与",lore=[{"color":"white","italic":false,"text":"オフハンドに持ったアイテムにdisplayタグを付与します。"},{"color":"white","italic":false,"text":"既にタグがついている場合は消去します。"}," ",{"color":"white","italic":false,"text":"displayタグ: インベントリに入ったりアイテム化すると消える"}]] 1

# エンダーチェストGUI追加
give @s ender_chest[consumable={consume_seconds:0,sound:"ambient.basalt_deltas.additions",has_consume_particles:false},enchantment_glint_override=true,custom_data={gui_maker:{editor_item:3b}},item_name={"color":"white","italic":false,"text":"ページ追加: エンダーチェスト"},lore=[{"color":"white","italic":false,"text":"エンダーチェストGUIにページを追加します"},{"color":"white","italic":false,"text":"GUIを設定したチェストの上に立って使用してください"}]] 1

# 実行関数登録
give @s writable_book[enchantment_glint_override=true,custom_data={gui_maker:{editor_item:4b}},item_name="実行関数登録",lore=[{"color":"white","italic":false,"text":"オフハンドのアイテムにクリック時に実行する関数を設定します"},{"color":"white","italic":false,"text":"本文に入れた関数のパスが実行するfunctionとなります"},{"color":"white","italic":false,"text":"以下のように引数を指定することもできます"},{"color":"white","italic":false,"text":"gui_maker:general/move_page_by_id {id:1}"}]] 1

# クリック音関数登録
give @s writable_book[enchantment_glint_override=true,custom_data={gui_maker:{editor_item:5b}},item_name="クリック音用関数登録",lore=[{"color":"white","italic":false,"text":"オフハンドのアイテムにクリック時に実行する関数を設定します"},{"color":"white","italic":false,"text":"本文に入れた関数のパスが実行するfunctionとなります"}]] 1

# ページタグ登録
give @s writable_book[enchantment_glint_override=true,custom_data={gui_maker:{editor_item:6b}},item_name="ページタグ登録",lore=[{"color":"white","italic":false,"text":"現在のページのタグ名を設定します"},{"color":"white","italic":false,"text":"本文に入れた文字列が設定するタグとなります"}]] 1