#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
controlId = 0

list = ds_list_create()
ds_list_add(list,"leftKey")
ds_list_add(list,"rightKey")
ds_list_add(list,"jumpKey")
ds_list_add(list,"shootKey")
ds_list_add(list,"suicideKey")
ds_list_add(list,"Set Default")
#define Mouse_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if controlId = 5 {
 global.leftKey = vk_left
 global.rightKey = vk_right
 global.jumpKey = vk_shift
 global.shootKey = ord("Z")
 global.suicideKey = ord("Q")
 controls_save()
} else {
 keyboard_wait()
 variable_global_set(ds_list_find_value(list,controlId),keyboard_lastkey)
 controls_save()
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field controlId: number

/*desc
0 = left
1 = right
2 = jump
3 = shoot
4 = suicide
5 = set default
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
if controlId = 5 {
 draw_set_valign(fa_center)
 draw_text(x,y,ds_list_find_value(list,controlId))
} else {
 draw_text(x,y-24,ds_list_find_value(list,controlId))
 draw_text(x,y,get_key_name(variable_global_get(ds_list_find_value(list,controlId))))
}
