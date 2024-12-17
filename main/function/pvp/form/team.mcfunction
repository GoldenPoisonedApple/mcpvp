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

# データ反映
data modify storage minecraft:mode Death.ticket merge value {a:"@a[team=Red]", b:"@a[team=Blue]"}