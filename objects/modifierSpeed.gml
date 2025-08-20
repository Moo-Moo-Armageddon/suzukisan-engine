#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
inst = noone
hspd = 0
vspd = 0
spd = 0
dir = 0
grav = 0
gravdir = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if triggered {

 if hspd != 0 or vspd != 0 {
  inst.hspeed = hspd
  inst.vspeed = vspd
 } else {
  inst.direction = dir
  inst.speed = spd

 }

 if grav != 0 {
  inst.gravity = grav
  inst.gravity_direction = gravdir
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
//field inst: instance
//field hspd: number
//field vspd: number
//field spd: number
  //field dir: angle
//field grav: number
  //field gravdir: angle

/*desc
Change a object's speed using hspeed and vspeed or speed and direction, alongside gravity!

Note: You can't use hspeed and vspeed at the same time as speed and direction.

May cause conflicts with the move modifier if used at the same time on the same object
*/
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
inst.speed = 0
inst.gravity = 0
