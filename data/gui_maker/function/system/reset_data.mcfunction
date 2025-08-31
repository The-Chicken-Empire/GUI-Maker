#> gui_maker:system/reset_data
# 
# @user
# @public

scoreboard players reset @a gui_maker.enderchest.page
scoreboard players reset @a gui_maker.inventory.page

data remove storage gui_maker: pages
data remove storage gui_maker: input
data remove storage gui_maker: return
data remove storage gui_maker: tmp

function gui_maker:init
