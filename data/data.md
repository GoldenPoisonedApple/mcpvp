### minecraft:setting
- GameTime : minute
- Area -> [area/init.mcfunction]
  - x : double
  - y : double
  - z : double
  - range : int
- Event -> [event/main.mcfunction]
  - wall : "main:event/wall/main" or "main:nop"
  - night : "main:event/night/main" or "main:nop"
- Mode -> [mode/init.mcfunction] [mode/main.mcfunction]
  - form : "person" or "team"
  - death : "hardcore" or "ticket" or "deathcount"
  - defence_red : "red" or "nop"
  - defence_blue : "blue" or "nop"
- Altitude : 130程度


### minecraft:wall
- Install -> [area/wall/fill.mcfunction]
  - x : int
  - z : int
  - y : int (fillの高さ)
  - block : string
  - load_x
  - load_y

### minecraft:event
- Wall -> [area/wall/init.mcfunction] [area/wall/main.mcfunction]
  - direction : x or z
  - breakTime : minute
- Night
  - readyTime : minute
  - startTime : minute
  - endTime : minute

### minecraft:mode
- Ticket
  - count : int
- Form -> [mode/death/*.mcfunction]
  - a : "@s" or "Red"
  - b : "@s" or "Blue"

### minecraft:defence
- PosRed -> [mode/defence/red/main.mcfunction]
  - x : int
  - y : int
  - z : int
- PosBlue -> [mode/defence/blue/main.mcfunction]
  - x : int
  - y : int
  - z : int
