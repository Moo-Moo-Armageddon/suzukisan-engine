///save_write(filename)
var f,s;
s = ds_map_write(global.saveMap)

f = file_text_open_write(argument0)
file_text_write_string(f,s)
file_text_close(f)
