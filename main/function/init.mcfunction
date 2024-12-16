# ワールド設定初期化
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule commandBlockOutput false

# 天気と時間設定
weather clear
time set noon

# ゲームの設定値初期化
function main:setting/set

# 時間初期化
function main:time/init

# エリア初期化
function main:area/init with storage minecraft:setting Area