save_set("PlayerX",player.x)
save_set("PlayerY",player.y)
save_set("Room",room)
save_set("Time",global.time)
save_set("Deaths",global.deaths)
save_set("Difficulty",global.difficulty)
save_set("Gravity",global.gravityDirection)


save_write("save"+string(global.saveNum))
