#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
savepos = 0

saveexists[0] = file_exists("save0")
saveexists[1] = file_exists("save1")
saveexists[2] = file_exists("save2")

cherryimg = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//cursor and stuff and ayeah

cherryimg += 1/15

if keyboard_check_pressed(global.rightKey) {
 audio_play(snd_jump)
 savepos += 1
} else if keyboard_check_pressed(global.leftKey) {
 audio_play(snd_jump)
 savepos -= 1
}

if savepos = -1 savepos = 2
if savepos = 3 savepos = 0

if keyboard_check_pressed(global.jumpKey) {
 global.saveNum = savepos
 room_goto_next()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///draw text
var i;

draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_top)

for(i=0;i<3;i+=1) {
 draw_set_font(fnt24)
 draw_text(((i*240) + 160),160,"Data "+string(i+1))

 draw_set_font(fnt12)
 if saveexists[i] {
  var a,b;
  a = save_read("save"+string(i))
  b = ds_map_create()

  ds_map_read(b,a)

  draw_text(((i*240) + 160),224,"Difficulty: " + get_difficulty_name(ds_map_find_value(b,"Difficulty")))
  draw_text(((i*240) + 160),256,"Time: " + float_to_time(ds_map_find_value(b,"Time")))
  draw_text(((i*240) + 160),288,"Deaths: " + string(ds_map_find_value(b,"Deaths")))

 } else {
  draw_text(((i*240) + 160),224,"No data found")
 }
}

draw_sprite(sprCherry,cherryimg,(savepos*240)+160,480)
