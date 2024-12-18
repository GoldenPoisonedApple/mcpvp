
# -------------------------------------
# ゲーム値設定
# ここの値を変更し、ゲームの設定を変更
# -------------------------------------

# 制限時間設定
data modify storage minecraft:setting GameTime set value 40

# 中心座標設定 
# zは-63d固定
data modify storage minecraft:setting Area set value {x:-900d, y:-63d, z:450d, range:500}


## 実装イベント設定
# 実装しない場合 "main:nop"
# 壁イベント "main:event/wall/main"
data modify storage minecraft:setting Event set value {wall:"main:event/wall/main"}
# 夜イベント "main:event/night/main"
data modify storage minecraft:setting Event merge value {night:"main:event/night/main"}

## モード設定
# チーム形態設定
# 個人戦 : "person"
# チーム戦 : "team"
data modify storage minecraft:setting Mode set value {form:"team"}
# 勝利条件設定
# ハードコア : "hardcore"
# チケット制 : "ticket"
# キルデス数制 : "deathcount"
data modify storage minecraft:setting Mode merge value {death:"deathcount"}
# 防衛設定
# ※※※※※※   個人戦では守備なし : "nop", "nop" のみ適用可能 ※※※※※※
# 攻守戦 : {defence_red:"red", defence_blue:"blue"}
# 攻撃側vs守備側 : {defence_red:"red", defence_blue:"nop"} or {defence_red:"nop", defence_blue:"blue"}
# 守備なし : {defence_red:"nop", defence_blue:"nop"}
data modify storage minecraft:setting Mode merge value {defence_red:"red", defence_blue:"blue"}


# -------------------------------------
# イベント設定
# ここの値を変更し、イベントの設定を変更
# -------------------------------------
# 壁イベント
# direction: xでx軸方向に生成 yでy軸方向に生成
# breakTime: 壁を壊す時間 (累計残り時間[分])
data modify storage minecraft:event Wall set value {direction:"x", breakTime:30}
# 夜イベント
# readyTime: 開始前の夕方の時間 startTime: 開始時間 endTime: 終了時間 (累計残り時間[分])
data modify storage minecraft:event Night set value {readyTime:20, startTime:18, endTime:10}


# -------------------------------------
# モード設定
# ここの値を変更し、モードの設定を変更
# -------------------------------------
# チケット制
# count: チケット数
data modify storage minecraft:mode Ticket set value {count:40}


# -------------------------------------
# 守備設定
# ここの値を変更し、守備の設定を変更
# -------------------------------------
# 位置設定
# 守備位置はビーコンの位置を指定
# PosRed: Redチームの守備位置 PosBlue: Blueチームの守備位置
data modify storage minecraft:defence PosRed set value {x:-900, y:-63, z:450}
data modify storage minecraft:defence PosBlue set value {x:-900, y:-63, z:450}