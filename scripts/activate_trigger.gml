//activate_trigger(trg)
OTHER_TRIGGER = argument0

with modifierParent {
 if trg = other.OTHER_TRIGGER {

  if delay = 0 {
   event_user(0)
   triggered = true
  } else {
   triggered = false
   alarm[0] = seconds_to_frames(delay)
  }
 }
}
