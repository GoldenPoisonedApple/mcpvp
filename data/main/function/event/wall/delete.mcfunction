# 壁建設

# スパゲッティーコード万歳
function main:event/wall/init with storage minecraft:event Wall

# とりま100
data modify storage minecraft:wall Install.y set value 100
# とりま深層岩
data modify storage minecraft:wall Install.block set value "minecraft:stone"

# 開始
scoreboard players set is_finish Wall 0