## 引数
# minecraft:defence PosBlue
# $x
# $y
# $z

# ビーコンの上は何も置かない
$execute positioned $(x) $(y) $(z) run fill ~-1 ~1 ~-1 ~1 ~20 ~1 air
$execute positioned $(x) $(y) $(z) run fill ~-1 ~ ~-1 ~-1 ~ ~1 air
$execute positioned $(x) $(y) $(z) run fill ~1 ~ ~-1 ~1 ~ ~1 air
$execute positioned $(x) $(y) $(z) run setblock ~ ~ ~-1 air
$execute positioned $(x) $(y) $(z) run setblock ~ ~ ~1 air

# ビーコンが破壊されたら
$execute if block $(x) $(y) $(z) air run function main:mode/form/team/attack-win {team:"Red"}
$execute if block $(x) $(y) $(z) air run function main:mode/form/team/deffence-defeat {team:"Blue"}

