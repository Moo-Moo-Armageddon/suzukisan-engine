#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
code = ""
obj = noone
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if triggered {
 if obj != noone{
  with obj {
   execute_string(other.code)
  }
 } else {
  execute_string(code)
 }
 triggered = false
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
//field code: string
//field obj: instance

/*desc
Run a piece of code (given as a string)! Can be optionally ran on an specific object!
*/
