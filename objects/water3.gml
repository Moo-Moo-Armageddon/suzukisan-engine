#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var v;
v = other.vspeed*global.gravityDirection
if v > 2 {
 other.vspeed = 2*global.gravityDirection
}
other.djump = true
