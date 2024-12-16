## 引数
# minecraft:setting Area
# $x (d)
# $y (d)
# $z (d)
# $range

# スポーンチャンク設定 高さは大体100で良いんじゃないかと思う
$setworldspawn $(x) 100 $(z)

## 基準アマスタ設定
# 既存アマスタ削除
kill @e[type=armor_stand,tag=area_basis]
# 基準アマスタ生成
$summon armor_stand $(x) $(y) $(z) {Tags:["area_basis"],Marker:1b,Invisible:1b,NoGravity:1b,CustomName:'{"text":"基準","color":"yellow"}',CustomNameVisible:1b}

## ボーダー設定
# ボーダー中心設定
$worldborder center $(x) $(z)
# ボーダー範囲設定
$worldborder set $(range)

# 各初期化
# Wall
function main:area/wall/init with storage minecraft:setting Wall
# Obsidian
function main:area/obsidian/init
# Ceiling
function main:area/ceiling/init