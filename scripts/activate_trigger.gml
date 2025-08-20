//activate_trigger(trg)
OTHER_TRIGGER = argument0

with modifierParent {
 if trg = other.OTHER_TRIGGER {
  event_user(0)
  if delay = 0 {
   triggered = true
  } else {
   triggered = false
   alarm[0] = delay
  }
 }
}
