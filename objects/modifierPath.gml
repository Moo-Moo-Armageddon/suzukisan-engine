#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
inst = noone
pth = noone
spd = 0
endaction = "stop"
absolute = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if triggered {
 triggered = false
 e = 0
 switch endaction {
  case "stop": e = 0 break
  case "loop": e = 1 break
  case "continue": e = 2 break
  case "reverse": e = 3 break
 }
 with inst path_start(other.pth,other.spd,other.e,other.absolute)
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
//field inst: instance
//field pth: path
//field spd: number
//field endaction: enum("stop","loop","continue","reverse")
//field absolute: false

/*desc
Set a object on a path!
*/
