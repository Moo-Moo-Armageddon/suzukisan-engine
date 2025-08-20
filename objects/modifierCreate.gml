#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()

obj = noone
createxy[0] = -1
createxy[1] = -1
creationcode = ""
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if triggered {
 triggered = false
 with instance_create(createxy[0],createxy[1],obj) {
  if other.creationcode != "" {
   execute_string(other.creationcode)
  }
 }
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()

//field obj: object
//field createxy: xy
//field creationcode: string

/*desc
Create a object at a position with optional creation code (given as string)!
*/
