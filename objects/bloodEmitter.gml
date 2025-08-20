#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 10
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///splat
var i,b;

for(i=0;i<360;i+=10){
 if random(1) < 0.2 {
  repeat 10 {
   b = instance_create(x,y,blood)
   b.direction = i
   b.speed = random(12)
  }
 }
}
