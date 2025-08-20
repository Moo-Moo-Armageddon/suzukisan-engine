///save_read(filename)
var f,s;
f = file_text_open_read(argument0)
s = file_text_read_string(f)
file_text_close(f)

return s
