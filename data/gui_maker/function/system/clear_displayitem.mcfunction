#> gui_maker:system/clear_displayitem
# display_onlyタグがついたアイテムを削除
# @within gui_maker:*

# エンダーチェスト系アイテム
clear @s *[minecraft:custom_data~{gui_maker:{display_only:1b}}]
