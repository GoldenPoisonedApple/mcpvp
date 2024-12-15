## スコアボード設定
scoreboard objectives add Wall dummy
execute store result score install_x Wall run data get storage minecraft:setting CenterPos[0]
execute store result score install_y Wall run data get storage minecraft:setting CenterPos[2]

## 基準アマスタ設定
# 既存アマスタ削除
kill @e[type=armor_stand,tag=area_basis]
kill @e[type=armor_stand,tag=wall_install]

# 基準アマスタ生成 とりあえず誰かの所に生成
execute at @a[limit=1] run summon armor_stand ~ ~ ~ {Tags:["area_basis"],Marker:1b,Invisible:1b,NoGravity:1b,CustomName:'{"text":"基準","color":"yellow"}',CustomNameVisible:1b}
# 位置設定
data modify entity @e[tag=area_basis, limit=1] Pos set from storage minecraft:setting CenterPos

# 壁敷設用アマスタ生成
execute at @e[tag=area_basis] run summon armor_stand ~ ~ ~ {Tags:["wall_install"],Marker:1b,Invisible:1b,NoGravity:1b,CustomName:'{"text":"壁敷設","color":"yellow"}',CustomNameVisible:1b}

# スポーンチャンク設定 高さは大体100で良いんじゃないかと思う
execute at @e[tag=area_basis] run setworldspawn ~ 100 ~

# ボーダー設定
execute at @e[tag=area_basis] run worldborder center ~ ~