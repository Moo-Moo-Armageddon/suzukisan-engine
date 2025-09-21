//switch between spike sprites for each room, if needed
switch object_index {

 //normal spikes
 case spikeLeft:
 switch room {
  default: sprite_index = sprSpikeLeft break
 }
 break

 //mini spikes
 case miniSpikeLeft:
 switch room {
  default: sprite_index = sprMiniSpikeLeft break
 }
 break
}
