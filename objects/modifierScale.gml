#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
inst = noone
xscale = -80085
yscale = -80085
easing = "EaseLinear"
seconds = 0

easetime = 0

instxs = 0
instys = 0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if triggered {
 var time;
 time = seconds_to_frames(seconds)
 if time = 0 time = 1

 inst.image_xscale = ease(easetime,0,time,instxs,xscale,easing)
 inst.image_yscale = ease(easetime,0,time,instys,yscale,easing)
 easetime += 1
 if easetime > time triggered = false
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
//field inst: instance
//field xscale: number
//field yscale: number
//field easing: enum("EaseLinear","EaseInSine","EaseOutSine","EaseInOutSine","EaseInQuad","EaseOutQuad","EaseInOutQuad","EaseInCubic","EaseOutCubic","EaseInOutCubic","EaseInQuart","EaseOutQuart","EaseInOutQuart","EaseInQuint","EaseOutQuint","EaseInOutQuint","EaseInCirc","EaseOutCirc","EaseInOutCirc","EaseInBack","EaseOutBack","EaseInOutBack")
//field seconds: number


/*desc
Stretch a object to a size over the course of a few seconds!
*/
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
easetime = 0

instxs = inst.image_xscale
instys = inst.image_yscale

if xscale = -80085 xscale = instxs
if yscale = -80085 yscale = instys
