///draw_text_sign(x,y,str)
var xx,yy,str;
xx = argument0
yy = argument1
str = argument2

draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_set_font(fnt12)

draw_set_color(c_black)
draw_text(xx+1,yy,txt)
draw_text(xx-1,yy,txt)
draw_text(xx,yy+1,txt)
draw_text(xx,yy-1,txt)
draw_text(xx+1,yy+1,str)
draw_text(xx-1,yy+1,str)
draw_text(xx+1,yy-1,str)
draw_text(xx-1,yy-1,str)

draw_set_color(c_white)
draw_text(xx,yy,str)
