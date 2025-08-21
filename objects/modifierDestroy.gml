#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
inst = noone
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if triggered {
 with inst instance_destroy()
 instance_destroy()
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
//field inst: instance

/*desc
Delete a object!

NOTE: This cannot be retriggered for obvious reasons
*/
