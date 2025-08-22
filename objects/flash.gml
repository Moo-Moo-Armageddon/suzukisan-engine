#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = argument0
color = argument1
addblend = argument2
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if addblend{
    draw_set_blend_mode(bm_add);
    draw_sprite_ext(sprite_index,image_index,x,y,800,608,image_angle,color,image_alpha)
    draw_set_blend_mode(bm_normal);
    }
else if !addblend{
    draw_sprite_ext(sprite_index,image_index,x,y,800,608,image_angle,color,image_alpha)
    }
