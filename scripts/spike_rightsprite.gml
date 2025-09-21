//switch between spike sprites for each room, if needed
switch object_index {

 //normal spikes
 case spikeRight:
 switch room {
  default: sprite_index = sprSpikeRight break
 }
 break

 //mini spikes
 case miniSpikeRight:
 switch room {
  default: sprite_index = sprMiniSpikeRight break
 }
 break
}
