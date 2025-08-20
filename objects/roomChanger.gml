#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
warpX = -1
warpY = -1
roomTo = noone
autoSave = false
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if warpX = -1 and warpY = -1 {
 if autoSave global.autoSave = true
 with other instance_destroy()
} else {
 other.x = warpX+17
 other.y = warpY+23
}

room_goto(roomTo)
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field roomTo: room
//field autoSave: false
//field warpX: number
//field warpY: number
