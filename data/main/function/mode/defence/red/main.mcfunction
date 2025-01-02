## 引数
# minecraft:defence PosRed
# $x
# $y
# $z

# ビーコンが破壊されたら
$execute if block $(x) $(y) $(z) air run function main:mode/form/team/attack-win {team:"Blue"}
$execute if block $(x) $(y) $(z) air run function main:mode/form/team/deffence-defeat {team:"Red"}

