#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(player) {
 x = player.x
 y = player.y
 image_xscale = player.image_xscale
 image_yscale = player.image_yscale
} else {
 instance_destroy()
}
