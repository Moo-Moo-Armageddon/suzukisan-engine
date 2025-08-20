#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()

inst = noone
targetxy[0] = -1
targetxy[1] = -1
easing = "EaseLinear"
seconds = 0

easetime = 0

instx = 0
insty = 0
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

 inst.x = ease(easetime,0,time,instx,targetxy[0],easing)
 inst.y = ease(easetime,0,time,insty,targetxy[1],easing)
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
//field targetxy: xy
//field easing: enum("EaseLinear","EaseInSine","EaseOutSine","EaseInOutSine","EaseInQuad","EaseOutQuad","EaseInOutQuad","EaseInCubic","EaseOutCubic","EaseInOutCubic","EaseInQuart","EaseOutQuart","EaseInOutQuart","EaseInQuint","EaseOutQuint","EaseInOutQuint","EaseInCirc","EaseOutCirc","EaseInOutCirc","EaseInBack","EaseOutBack","EaseInOutBack")
//field seconds: number

/*desc
Move a object to a position with a selected kind of easing, over the course of a few seconds!

Make sure not to have multiple of these running at once on one object.
*/
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
easetime = 0
instx = inst.x
insty = inst.y
