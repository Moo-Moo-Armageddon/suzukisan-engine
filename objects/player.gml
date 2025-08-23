#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///init shit

jump1 = 8.5
jump2 = 7
wjump = 9

grav = 0.4
gravity = 0.4
djump = true
onground = false
onplatform = false
frozen = false

runspeed = 3
maxvspeed = 9

horizontal = 0

//autosave on game start
if global.gameStarted and !file_exists("save"+string(global.saveNum)){
 save_game()
}

//lulz bow
if global.difficulty = 0 and !instance_exists(playerBow) instance_create(x,y,playerBow)

//autosave on variable condition
if global.autoSave {
 global.autoSave = false
 save_game()
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///animation and other movement shit

//standing and running

if horizontal = 0 {
 hspeed = 0
 image_speed = 0.2
 sprite_index = sprPlayerIdle
} else {
 image_speed = 0.5
 sprite_index = sprPlayerRun
 image_xscale = horizontal
 hspeed = horizontal*runspeed
}

//jumping and falling
if !onground {
 var v;

 v = vspeed*global.gravityDirection

 if v > 0 {
  sprite_index = sprPlayerFall
 } else {
  sprite_index = sprPlayerJump
 }
}

//set yscale according to gravity
image_yscale = global.gravityDirection

//vines

//left vine
if distance_to_object(vineLeft) < 2 and !place_meeting(x,y+global.gravityDirection,block) {
 sprite_index = sprPlayerSlide
 vspeed = global.gravityDirection*2
 image_xscale = 1
 if keyboard_check_pressed(global.rightKey) and keyboard_check_direct(global.jumpKey) {
  audio_play(snd_walljump)
  vspeed = -wjump*global.gravityDirection
  hspeed = 15
 }
}

//right vine
if distance_to_object(vineRight) < 2 and !place_meeting(x,y+global.gravityDirection,block) {
 sprite_index = sprPlayerSlide
 vspeed = global.gravityDirection*2
 image_xscale = -1
 if keyboard_check_pressed(global.leftKey) and keyboard_check_direct(global.jumpKey) {
  audio_play(snd_walljump)
  vspeed = -wjump*global.gravityDirection
  hspeed = -15
 }
}

//squish
if collision_point(x,y,block,true,false){
 kill_player()
}

//god mode alpha
if global.godMode {
 image_alpha = 0.5
} else {
 image_alpha = 1
}
#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///input and vertical movement
var l,r;

//set horizontal movement
r = keyboard_check_direct(global.rightKey)
l = keyboard_check_direct(global.leftKey)

horizontal = r
if horizontal = 0 horizontal = -l

if frozen horizontal = 0

//check if on ground (duh)
onground = place_meeting(x,y+global.gravityDirection,block)
if !place_meeting(x,y+global.gravityDirection,platform) onplatform = false
if onplatform onground = onplatform

//refresh djump
if onground {
 djump = true
}

if !frozen {

 //jump
 if keyboard_check_pressed(global.jumpKey) {
  if onground or place_meeting(x,y,water1) {
   vspeed = -jump1*global.gravityDirection
   djump = true
   audio_play(snd_jump)
  } else if djump or place_meeting(x,y,water2){
   djump = false
   vspeed = -jump2*global.gravityDirection
   audio_play(snd_djump)
  }
 }

 //variable jumping is awesome
 if global.gravityDirection = 1 {
  if keyboard_check_released(global.jumpKey) and vspeed < 0 {
   vspeed *= 0.45
  }
 } else {
  if keyboard_check_released(global.jumpKey) and vspeed > 0 {
   vspeed *= 0.45
  }
 }

 //bulletz
 if keyboard_check_pressed(global.shootKey) and instance_number(playerBullet) < 4 {
  audio_play(snd_shoot)
  instance_create(x,y,playerBullet)
 }

}

//limit vspeed
var v;
v = vspeed*global.gravityDirection
if v > maxvspeed vspeed = maxvspeed*sign(vspeed)


//kill yourself
if keyboard_check_pressed(global.suicideKey) {
 kill_player()
}

//change gravity
gravity = grav*global.gravityDirection
#define Collision_block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///collision

//copy and pasted from minimalist's engine
//taken and modified from yoyoyo gms2.1

// Check for horizontal collisions
if (!place_free(x+hspeed,y)) {
 if (hspeed <= 0) {
  move_contact_solid(180,abs(hspeed));
 } else {
  move_contact_solid(0,abs(hspeed));
 }
 hspeed = 0;
}

// Check for vertical collisions
if (!place_free(x,y+vspeed)) {
 if(vspeed <= 0) {
  move_contact_solid(90,abs(vspeed));
 } else {
  move_contact_solid(270,abs(vspeed));
 }
 vspeed = 0;
}

// Check for diagonal collisions
if (!place_free(x+hspeed,y+vspeed)) {
 hspeed = 0;
}
#define Collision_killerParent
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///you must DIE!
if global.gameStarted {
 kill_player()
} else {
 instance_destroy()
 room_restart()
}
#define Collision_platform
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//taken from nekoron and kinda modifyed. everything related to platforms is a mess

if global.gravityDirection = 1 {
 if (y-vspeed/2 <= other.y) {
    if (other.vspeed >= 0) {
        y = other.bbox_top-9;
        vspeed = other.vspeed;
        djump = true;
    }
    onplatform = true;
    djump = true;
 }
} else {
 if (y+vspeed/2 >= other.y) {
    if (other.vspeed <= 0) {
        y = other.bbox_bottom+9;
        vspeed = other.vspeed;
        djump = true;
    }
    onplatform = true;
 }
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///bow
if global.difficulty = 0 and !instance_exists(playerBow) instance_create(x,y,playerBow)
