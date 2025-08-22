#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
trg = ""
retriggerable = false
waittime = 1
image_speed = 0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = 0
#define Collision_playerBullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if image_index = 0 {
 image_index = 1
 activate_trigger(trg)
 if retriggerable alarm[0] = seconds_to_frames(waittime)
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field trg: string
//field retriggerable: false
  //field waittime: number
