///music_play(sound,loops)
if argument0 = noone exit

if global.currentMusic != argument0 {
 music_stop()
 global.currentMusic = argument0
 audio_music_play_ext(global.currentMusic,0,1,0,1,argument1)
}
