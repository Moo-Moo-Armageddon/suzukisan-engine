var a,b;
a = save_read("save"+string(global.saveNum))
b = ds_map_create()

ds_map_read(b,a)

with player instance_destroy()

instance_create(ds_map_get(b,"PlayerX"),ds_map_get(b,"PlayerY"),player)

global.gravityDirection = ds_map_get(b,"Gravity")

room_goto(ds_map_get(b,"Room"))
