/// @description Draw UI
var tmpcol = draw_get_color();
var tempalg = draw_get_halign();
// background
if (gameover) // game is over?
{
	draw_sprite(spr_gameover,0,88,96);
}
else
{
	draw_sprite(sprite_index,image_index,88,96);
	draw_text_outline(bgs[bgp,2],bgs[bgp,3],scr_texlist(bgs[bgp,1]),c_black);
}
// status
// score
draw_set_color(c_black);
draw_rectangle(416,112,512,160,false);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text(504,120,global.curr_score);
// arrows
draw_set_halign(fa_left);
draw_set_color(c_grey);
draw_rectangle(0,8,room_width,80,false);
draw_set_color(c_white);
draw_text_w(640-strx,32,curr_str,20);
draw_set_color(tmpcol);
draw_set_halign(tempalg);