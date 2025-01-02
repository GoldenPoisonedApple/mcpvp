# 壁削除
execute if score breakTime Wall = time_min Time if score breakFlag Wall matches 1 run title @a title {"text":"壁が壊れていきます...","color":"white","bold":true}
execute if score breakTime Wall = time_min Time if score breakFlag Wall matches 1 run function main:event/wall/delete
# フラグ折る
execute if score breakTime Wall = time_min Time if score breakFlag Wall matches 1 run scoreboard players set breakFlag Wall 0

# 呼び出し
execute if score is_finish Wall matches 0 run function main:event/wall/update with storage minecraft:event Wall