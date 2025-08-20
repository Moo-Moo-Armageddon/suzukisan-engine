///float_to_time(num)
var realseconds,seconds,minutes,hours;
seconds = floor(argument0)

hours = string(floor(seconds/3600))
if string_length(hours) < 2 {
 hours = "0"+hours
}

minutes = string(floor((seconds/60) mod 60))
if string_length(minutes) < 2 {
 minutes = "0"+minutes
}

realseconds = string(floor(seconds mod 60))
if string_length(realseconds) < 2 {
 realseconds = "0"+realseconds
}

return hours+":"+minutes+":"+realseconds
