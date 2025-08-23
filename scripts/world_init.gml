//init shiet

//DEBUG!

global.debugMode = true

global.debugkeyGodMode = ord("G")
global.debugkeyTeleport = vk_tab
global.debugkeyNextRoom = vk_pageup
global.debugkeyPreviousRoom = vk_pagedown

//game name and starting room
global.gameName = "The HKH Engine"
global.startRoom = rSampleA

//set gameover
global.playGameOverMusic = true
global.gameOverMusic = bgm_ondeath

//set or load controls
if !file_exists("controls.ini") {
 global.leftKey = vk_left
 global.rightKey = vk_right
 global.jumpKey = vk_shift
 global.shootKey = ord("Z")
 global.suicideKey = ord("Q")
 controls_save()
} else {
 controls_load()
}
//variable init don't edit
global.gameStarted = false

global.deaths = 0
global.time = 0
global.difficulty = -1
global.saveNum = -1
global.gravityDirection = 1
global.currentMusic = noone

global.autoSave = false
global.saveMap = ds_map_create()
global.trigger = ds_list_create()
global.godMode = false
