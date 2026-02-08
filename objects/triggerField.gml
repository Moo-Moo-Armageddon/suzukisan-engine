#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
trg = ""
retriggerable = false
key = ""

enter = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var canenter;

canenter = true

if key != "" {
 canenter = false
 if ds_list_find_index(global.trigger,key) != -1 {
  canenter = true
 }
}

if place_meeting(x,y,player) and !enter and canenter {
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
//field key: string
//field retriggerable: false
//field visible: false
