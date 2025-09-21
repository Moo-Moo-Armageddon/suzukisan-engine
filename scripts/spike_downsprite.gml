//switch between spike sprites for each room, if needed
switch object_index {

 //normal spikes
 case spikeDown:
 switch room {
  default: sprite_index = sprSpikeDown break
 }
 break

 //mini spikes
 case miniSpikeDown:
 switch room {
  default: sprite_index = sprMiniSpikeDown break
 }
 break
}
