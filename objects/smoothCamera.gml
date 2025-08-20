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
 xto = clamp(player.x-400,0,room_width-800)
 yto = clamp(player.y-304,0,room_height-608)

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
 xto = clamp(player.x-400,0,room_width-800)
 yto = clamp(player.y-304,0,room_height-608)

 camx = xto
 camy = yto
}
view_xview = floor(camx)
view_yview = floor(camy)
