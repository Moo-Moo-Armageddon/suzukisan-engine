//kill em dead
if !global.gameStarted exit

with player {
 instance_destroy()
 instance_create(x,y,bloodEmitter)
}

global.deaths += 1

audio_play(snd_death)

instance_create(0,0,gameOver)

if global.playGameOverMusic {
 audio_music_pause()
 audio_play(bgm_ondeath)
}
