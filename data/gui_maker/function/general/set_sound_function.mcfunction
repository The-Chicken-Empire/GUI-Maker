#> gui_maker:general/set_sound_function
#
# オフハンドに持っているアイテムにsound_functionを設定
# functionをキーに持つストレージをインプット
# @user
# @within gui_maker:editor_item/set_sound

# 何かの間違いでコンテナが残っているとバグるので一応kill
execute as @e[tag=gui_maker.container,type=chest_minecart] run data modify entity @s Items set value []
kill @e[tag=gui_maker.container,type=chest_minecart]

data modify storage gui_maker: tmp.general/set_sound_function.item set from entity @s equipment.offhand

$data modify storage gui_maker: tmp.general/set_sound_function.item.components.minecraft:custom_data.gui_maker.sound_function set value "$(function)"
data modify storage gui_maker: tmp.general/set_sound_function.item.Slot set value 0b

summon chest_minecart 0 -100 0 {NoGravity:1b,Invulnerable:1b,Tags:["gui_maker.container"]}
execute as @e[tag=gui_maker.container,type=chest_minecart] run data modify entity @s Items append from storage gui_maker: tmp.general/set_sound_function.item
item replace entity @s weapon.offhand from entity @e[tag=gui_maker.container,type=chest_minecart, limit=1] container.0

# 登録メッセージ
$tellraw @s "オフハンドアイテムにクリック時$(function)を実行するように設定しました"

# コンテナをキル
execute as @e[tag=gui_maker.container,type=chest_minecart] run data modify entity @s Items set value []
kill @e[tag=gui_maker.container,type=chest_minecart]

# リセット
data remove storage gui_maker: tmp.general/set_sound_function