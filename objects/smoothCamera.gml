#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
spd = 0.05
camx = view_xview
camy = view_yview
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var xto, yto;

if instance_exists(player){
 xto = clamp(player.x - view_wview/2,0,room_width - view_wview)
 yto = clamp(player.y - view_hview/2,0,room_height - view_hview)

 camx = lerp(camx,xto,spd)
 camy = lerp(camy,yto,spd)

}
view_xview = floor(camx)
view_yview = floor(camy)
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field spd: number

var xto, yto;

if instance_exists(player){
 xto = clamp(player.x - view_wview/2,0,room_width - view_wview)
 yto = clamp(player.y - view_hview/2,0,room_height - view_hview)

 camx = xto
 camy = yto
}
view_xview = floor(camx)
view_yview = floor(camy)
