#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///init

//more than 1 world obj is a fucking horrible idea
if instance_number(world) > 2 {
 instance_destroy()
 exit
}

world_init()

//goto next room
room_goto_next()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///set room caption and also debug stuff
if global.gameStarted {
 global.time += 1/room_speed
 room_caption = global.gameName + " - Deaths: ["+string(global.deaths)+"] - Time: ["+float_to_time(global.time)+"]"
} else {
 room_caption = global.gameName
}

//debug
if !global.debugMode exit

if keyboard_check_pressed(global.debugkeyGodMode) {
 if global.godMode {
  global.godMode = false
 } else {
  global.godMode = true
 }
}

if keyboard_check_pressed(global.debugkeyTeleport) {
 with player {
  x = mouse_x
  y = mouse_y
  speed = 0
  djump = true
 }
}

if keyboard_check_pressed(global.debugkeyNextRoom) and room != room_last {
 with player instance_destroy()
 room_goto_next()
}

if keyboard_check_pressed(global.debugkeyPreviousRoom) and room != room_first {
 with player instance_destroy()
 room_goto_previous()
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///idk

room_caption = global.gameName

//autosave death and time every reset
if global.gameStarted {
 save_set("Time",global.time)
 save_set("Deaths",global.deaths)
 save_write("save"+string(global.saveNum))
}

//unpause music and stop game over music
audio_music_resume()
if global.playGameOverMusic {
 audio_stop(global.gameOverMusic)
}
#define KeyPress_82
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///reset player
if global.gameStarted load_game()
#define KeyPress_113
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///reset game
instance_destroy()
//kill all persistent objects (except for the core object, it's immortal)
with all {
 if object_index != gm82core_object and persistent {
  instance_destroy()
 }
}
audio_all_stop()
room_goto(rInit)
