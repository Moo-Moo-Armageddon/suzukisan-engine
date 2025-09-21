//switch between spike sprites for each room, if needed
switch object_index {

 //normal spikes
 case spikeUp:
 switch room {
  default: sprite_index = sprSpikeUp break
 }
 break

 //mini spikes
 case miniSpikeUp:
 switch room {
  default: sprite_index = sprMiniSpikeUp break
 }
 break
}
