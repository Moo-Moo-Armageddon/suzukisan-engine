//read controls
ini_open("controls.ini")

global.leftKey = ini_read_real("Controls","leftKey",0)
global.rightKey = ini_read_real("Controls","rightKey",0)
global.jumpKey = ini_read_real("Controls","jumpKey",0)
global.shootKey = ini_read_real("Controls","shootKey",0)
global.suicideKey = ini_read_real("Controls","suicideKey",0)

ini_close()
