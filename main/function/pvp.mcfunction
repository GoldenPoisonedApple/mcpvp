
# 時間
execute if score is_finish AliveCount matches 0 run function main:time/main

# エリア
execute if score is_finish AliveCount matches 0 run function main:area/main

# イベント
execute if score is_finish AliveCount matches 0 run function main:event/main with storage minecraft:setting Event

# pvp系
execute if score is_finish AliveCount matches 0 run function main:pvp/main

# モード
execute if score is_finish AliveCount matches 0 run function main:mode/main with storage minecraft:setting Mode