#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
trg = ""
retriggerable = false


enter = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y,player) and !enter {
 enter = true
 activate_trigger(trg)
 if !retriggerable instance_destroy()
}

if !place_meeting(x,y,player) enter = false
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field trg: string
//field retriggerable: false
//field visible: false
