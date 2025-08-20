//write controls
ini_open("controls.ini")

ini_write_real("Controls","leftKey",global.leftKey)
ini_write_real("Controls","rightKey",global.rightKey)
ini_write_real("Controls","jumpKey",global.jumpKey)
ini_write_real("Controls","shootKey",global.shootKey)
ini_write_real("Controls","suicideKey",global.suicideKey)

ini_close()
