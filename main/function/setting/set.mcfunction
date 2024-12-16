
# -------------------------------------
# ゲーム値設定
# ここの値を変更し、ゲームの設定を変更
# -------------------------------------

# 制限時間設定
data modify storage setting GameTime set value 30

# 中心座標設定 
# zは-63d固定
data modify storage setting Area set value {x:-900d, y:-63d, z:450d, range:500}

# 壁
# xでx軸方向に生成 yでy軸方向に生成
# 範囲は中心座標と同じで良い
data modify storage setting Wall set value {direction:"z", range:500}