#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0
flipped = false
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///save yeah
if flipped {
 image_yscale = -1
 y = ystart+32
}

if instance_exists(player) and (place_meeting(x,y,playerBullet) or (place_meeting(x,y,player) and keyboard_check_direct(global.shootKey))) and image_index = 0 and sign(image_yscale) = global.gravityDirection {
 save_game()
 image_index = 1
 alarm[0] = 30
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field flipped: false
