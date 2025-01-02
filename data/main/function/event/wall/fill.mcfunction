## 引数
# minecraft:wall Install
# $x
# $y
# $z
# $load_x
# $load_z
# $block

# 強制読み込み
$forceload add $(x) $(z)

# 初期化 -63から319まで
$fill $(x) -63 $(z) $(x) 319 $(z) minecraft:air
# 壁敷設
$fill $(x) -63 $(z) $(x) $(y) $(z) $(block)

# 強制読み込み削除
$forceload remove $(load_x) $(load_z)