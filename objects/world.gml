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
///set room caption
if global.gameStarted {
 global.time += 1/room_speed
 room_caption = global.gameName + " - Deaths: ["+string(global.deaths)+"] - Time: ["+float_to_time(global.time)+"]"
} else {
 room_caption = global.gameName
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
game_restart()
