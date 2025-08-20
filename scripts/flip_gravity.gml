///flip_gravity(grav)
var a;
a = sign(argument0)

if global.gravityDirection != a{
 global.gravityDirection = a
 with player {
  djump = true
  vspeed = 0
  y += 4*global.gravityDirection
 }
}
