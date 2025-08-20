#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
diff = 0
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy_other()
switch diff {
 case 4:
  if file_exists("save"+string(global.saveNum)) {

    global.gameStarted = true

    var a;
    a = save_read("save"+string(global.saveNum))
    ds_map_read(global.saveMap,a)

    global.time = save_get("Time")
    global.difficulty = save_get("Difficulty")
    global.deaths = save_get("Deaths")

    load_game()

  } else {
   room_restart()
  }
 break

 case 5:
  room_goto(rOptionsSelect)
 break

 default:
  file_delete("save"+string(global.saveNum))
  global.difficulty = diff
  global.gameStarted = true
  room_goto(global.startRoom)
 break
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field diff: number(0,5)
/*desc
0 = medium
1 = hard
2 = very hard
3 = impossible
4 = load
5 = options
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self()
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_set_font(fnt12)
draw_text(x+16,y-32,get_difficulty_name(diff))
