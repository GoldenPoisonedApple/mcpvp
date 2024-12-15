
# -------------------------------------
# ゲーム値設定
# ここの値を変更し、ゲームの設定を変更
# -------------------------------------

# 制限時間設定
data modify storage setting GameTime set value 30

# 中心座標設定 zは-63d固定
data modify storage setting CenterPos set value [-900d, -63d, 450d]

# エリア範囲 (半径)
worldborder set 500
data modify storage setting AreaRange set value 500

# 壁
# direction: xでx軸方向に生成 yでy軸方向に生成
data modify storage setting Wall set value {direction:"x"}