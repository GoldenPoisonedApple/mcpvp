
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
# 実装しない場合は""にする
# 壁イベント "function main:event/wall/main"
data modify storage minecraft:setting Event set value {wall:"function main:event/wall/main"}
# 夜イベント "function main:event/night/main"
data modify storage minecraft:setting Event merge value {night:"function main:event/night/main"}

## モード設定
# 個人戦 : "function main:pvp/form/person"
# チーム戦 : "function main:pvp/form/team"
data modify storage minecraft:setting Mode set value {form:"function main:pvp/form/person"}
# ハードコア : "function main:pvp/death/hardcore"
# チケット制 : "function main:pvp/death/ticket"
# キルデス数制   : "function main:pvp/death/deathcount"
data modify storage minecraft:setting Mode merge value {death:"function main:pvp/death/ticket"}

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
data modify storage minecraft:mode Death.ticket set value {count:40}
