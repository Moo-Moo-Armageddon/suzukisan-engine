#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()

inst = noone
targetangle = 0
easing = "EaseLinear"
seconds = 0

easetime = 0

insta = 0
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

 inst.image_angle = ease(easetime,0,time,insta,targetangle,easing)
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
//field targetangle: angle
//field easing: enum("EaseLinear","EaseInSine","EaseOutSine","EaseInOutSine","EaseInQuad","EaseOutQuad","EaseInOutQuad","EaseInCubic","EaseOutCubic","EaseInOutCubic","EaseInQuart","EaseOutQuart","EaseInOutQuart","EaseInQuint","EaseOutQuint","EaseInOutQuint","EaseInCirc","EaseOutCirc","EaseInOutCirc","EaseInBack","EaseOutBack","EaseInOutBack")
//field seconds: number

/*desc
Rotate a object to a angle over a few seconds!
*/
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
easetime = 0
insta = inst.image_angle
