/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_bg,0,0,0);
draw_sprite(spr_mungtange,0,room_width/2,room_height/2);
draw_text_outline(80,200,scr_texlist(0),c_black);
var hal = draw_get_halign();
var val = draw_get_valign();
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_text_outline(room_width/2,320,scr_texlist(4),c_black);
draw_set_halign(hal);
draw_set_valign(val);