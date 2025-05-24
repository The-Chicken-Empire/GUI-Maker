#> gui_maker:system/run_trigger
#
# trigger_itemに設定されているfunctionを実行する
# guimaker: args.run_trigger ストレージにアイテムのminecraft:custom_data.gui_makerの内容を入れる必要あり(使用後にリセット)
# @within gui_maker:*

# 引数確認
execute unless data storage gui_maker: args.run_trigger run tellraw @a {"color":"red","text":"引数が存在しません! (gui_maker:system/run_trigger)"}

# triggerコマンドを実行
execute if data storage gui_maker: args.run_trigger.trigger_function run data modify storage gui_maker: tmp.run_trigger.function set from storage gui_maker: args.run_trigger.trigger_function 
execute if data storage gui_maker: args.run_trigger.trigger_function run function gui_maker:system/run_function with storage gui_maker: tmp.run_trigger
execute unless data storage gui_maker: args.run_trigger.trigger_function run tellraw @a {"color":"red","text":"引数が存在しません! (gui_maker:system/run_trigger / gui_maker.trigger_function)"}

# 音を鳴らす
execute if data storage gui_maker: args.run_trigger.sound_function run data modify storage gui_maker: tmp.run_trigger.function set from storage gui_maker: args.run_trigger.sound_function 
execute if data storage gui_maker: args.run_trigger.sound_function run function gui_maker:system/run_function with storage gui_maker: tmp.run_trigger
execute unless data storage gui_maker: args.run_trigger.sound_function run function gui_maker:system/play_default_sound

# ストレージリセット
data remove storage gui_maker: args.run_trigger
data remove storage gui_maker: tmp.run_trigger
