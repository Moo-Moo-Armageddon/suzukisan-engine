#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
objs = ds_list_create()
ignore = noone

once = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i,o;

for(i=0;i<ds_list_size(objs);i+=1) {
 o = ds_list_find_value(objs,i)
 with o {
  x = other.x + x_off
  y = other.y + y_off
  image_angle = angle_start + other.image_angle
  image_xscale = xscale_start * other.image_xscale
  image_yscale = yscale_start * other.image_yscale
 }
}
#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if once exit
once = true

with all {
 if place_meeting(x,y,other) and object_index != other.ignore {
  ds_list_add(other.objs,id)
  xscale_start = image_xscale
  yscale_start = image_yscale
  angle_start = image_angle
  x_off = x - other.x
  y_off = y - other.y
 }
}

image_xscale = 1
image_yscale = 1
image_angle = 0
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field ignore: object

/* desc
 Applies triggers that affect itself to all objects under it, with a option to ignore a object type
*/
