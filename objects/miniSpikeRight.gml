#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
depth = 1100
spike_rightsprite()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///change spike depth when far away from starting point
if distance_to_point(xstart,ystart) > 16 {
 depth = 0
}
