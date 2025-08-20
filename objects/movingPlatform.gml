#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspd = 0
vspd = 0
moveOnTouch = false
canBounce = true

once = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//yeah
if place_meeting(x,y-global.gravityDirection,player) and moveOnTouch {
 moveOnTouch = false
 if !moveOnTouch {
  hspeed = hspd
  vspeed = vspd
 }
}

event_user(0)
#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if once exit
once = true

if !moveOnTouch {
 hspeed = hspd
 vspeed = vspd
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field hspd: number
//field vspd: number
//field canBounce: true
//field moveOnTouch: false
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///platform stuff
//bounce
if canBounce {

 if place_meeting(x,y+vspeed,block){
  vspeed = -vspeed
 }

 if place_meeting(x+hspeed,y,block){
  hspeed = -hspeed
 }

}

//player+platform movement (behold, the worst code ever)

if !instance_exists(player) exit

var playerRiding,playerAbove,off;

off = 9
playerRiding = place_meeting(x,y - global.gravityDirection*2,player)
playerAbove = (global.gravityDirection = 1 and player.y+off > bbox_top) or (global.gravityDirection = -1 and player.y-off < bbox_bottom)


if playerRiding {
 with player {
  //move player horizontally
  if !place_meeting(x+other.hspeed,y,block) {
   x += other.hspeed
  }
 }

 if playerAbove {
  with player {
   //moving vertically
   if other.vspeed != 0 {

    if global.gravityDirection = 1 {

     if !place_meeting(x,other.bbox_top-off,block) {
      if vspeed > 0 and other.vspeed <= 0 {
       y = other.bbox_top-off - abs(other.vspeed)
       vspeed = 0
       onplatform = true
       djump = true
      }
     }

    } else {

     if !place_meeting(x,other.bbox_bottom+off,block) {
      if vspeed < 0 and other.vspeed >= 0 {
       y = other.bbox_bottom+off + abs(other.vspeed)
       vspeed = 0
       onplatform = true
       djump = true
      }

     }
    }
   }
  }
 }
}
