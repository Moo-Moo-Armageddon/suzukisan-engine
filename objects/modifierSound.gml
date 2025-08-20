#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()

snd = noone
advanced = false
volume = 1
pan = 0
pitch = 1
loops = false
music = false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if triggered {
 triggered = false

 if !advanced {
  audio_play(snd)
 } else {
  if music {
   music_play(snd,loops)
  } else {
   audio_play_ext(snd,volume,pan,pitch,loops)
  }
 }
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited()
//field snd: sound
//field advanced: false
  //field volume: number
  //field pan: number(-1,1)
  //field pitch: number
  //field loops: false
  //field music: false
