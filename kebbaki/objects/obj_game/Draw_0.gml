/// @description Draw UI
var tmpcol = draw_get_color();
var tempalg = draw_get_halign();
var l = 0;
// background
if (gameover) // game is over?
{
	draw_sprite_ext(spr_gameover,0,room_width/2,room_height,image_xscale,image_yscale,0,c_white,1);
}
else
{
	// 자연스럽게 루프시키는 코드
	var ind = floor(temp_index);
	var len = sprite_get_number(sprite_index)-1;
	l = (ind >= len) ? (len - (ind mod len)) : ind;
	if ((sprite_index == spr_status2) || (sprite_index == spr_status3))
	{
		draw_sprite_ext(sprite_index,l,room_width/2,room_height,image_xscale,image_yscale,0,c_white,1);
	}
	else
	{
		draw_sprite_ext(sprite_index,ind,room_width/2,room_height,image_xscale,image_yscale,0,c_white,1);
	}
	draw_text_outline(bgs[bgp,2],bgs[bgp,3],scr_texlist(bgs[bgp,1]),c_black);
}
// status
// score
draw_set_color(c_black);
draw_rectangle(368,96,464,144,false);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text(456,104,global.curr_score);
// arrows
draw_set_halign(fa_left);
draw_set_color(c_grey);
draw_rectangle(0,6,room_width,78,false);
draw_set_color(c_white);
draw_text_w(640-strx,28,curr_str,20);
draw_set_color(tmpcol);
draw_set_halign(tempalg);