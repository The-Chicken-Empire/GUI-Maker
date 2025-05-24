#> gui_maker:enderchest/check
# チェスト内のどのアイテムがなくなったかを確認
# @within gui_maker:tick

# エンダーチェスト系アイテム
execute store success score $gui_maker.tmp gui_maker run clear @s *[minecraft:custom_data~{gui_maker:{trigger_item:1b}}]

# triggerとなるアイテムを消したならそのアイテムの内容を調べtriggerコマンドを実行する
execute if score $gui_maker.tmp gui_maker matches 1.. run function gui_maker:enderchest/click_trigger

#リセット
scoreboard players reset $gui_maker.tmp gui_maker