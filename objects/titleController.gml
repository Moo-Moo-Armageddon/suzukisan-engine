#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//press a single fucking button
if keyboard_check_pressed(global.jumpKey) {
 room_goto_next()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if global.debugMode {
 draw_set_color(c_red)
 draw_set_halign(fa_right)
 draw_set_valign(fa_top)
 draw_set_font(fnt12)
 draw_text(796,16,"Debug Mode is on!!!!")
}
