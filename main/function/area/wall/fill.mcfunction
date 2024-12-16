## 引数
# minecraft:wall Install
# $x
# $y
# $z
# $block

# 初期化 -63から319まで
$fill $(x) -63 $(z) $(x) 319 $(z) minecraft:air
# 壁敷設
$fill $(x) -63 $(z) $(x) $(y) $(z) $(block)