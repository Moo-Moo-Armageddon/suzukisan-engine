#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*

[original code, this is to fix a bug with being upside down in water]

if other.vspeed > 2 {
 other.vspeed = 2
}

*/

if global.gravityDirection = 1{
    if other.vspeed > 2 {
        other.vspeed = 2
        }
    }
else if global.gravityDirection = -1{
    if other.vspeed < -2 {
    other.vspeed = -2
        }
    }

other.djump = true
