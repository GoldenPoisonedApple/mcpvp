## チーム戦

# チーム作成
team add Red "赤チーム"
team add Blue "青チーム"

# チーム設定
team modify Red color red
team modify Blue color blue
team modify Red friendlyFire false
team modify Blue friendlyFire false
team modify Red nametagVisibility hideForOtherTeams
team modify Blue nametagVisibility hideForOtherTeams

# チーム分け
team leave @a
# ランダムにチーム分け
team join Red @r[team=]
team join Blue @r[team=]
team join Red @r[team=]
team join Blue @r[team=]
team join Red @r[team=]
team join Blue @r[team=]
team join Red @r[team=]
team join Blue @r[team=]
team join Red @r[team=]
team join Blue @r[team=]

# スコアボード用ダミーチーム加入
team join Red Red
team join Blue Blue

# データ反映
data modify storage minecraft:mode Form set value {a:"Red", b:"Blue"}