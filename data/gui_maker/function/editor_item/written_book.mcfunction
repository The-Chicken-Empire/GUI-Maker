#> gui_maker:editor_item/written_book
#
# 本に書かれた署名の内容をもとに実行する
#
# @private


# 署名された内容をストレージに取得
data modify storage gui_maker: tmp.title set from entity @s SelectedItem.components.minecraft:written_book_content.pages[0].raw

# 種類に合わせて実行
execute if entity @s[advancements={gui_maker:editor_item/written_book={set_trigger_function=true}}] run function gui_maker:editor_item/set_trigger
execute if entity @s[advancements={gui_maker:editor_item/written_book={set_sound_function=true}}] run function gui_maker:editor_item/set_sound
execute if entity @s[advancements={gui_maker:editor_item/written_book={set_pagetag=true}}] run function gui_maker:editor_item/set_pagetag

# リセット
advancement revoke @s only gui_maker:editor_item/written_book
data remove storage gui_maker: tmp