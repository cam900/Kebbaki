// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_w(_x, _y, _str, _w)
{
	var xx = _x;
	var i = 1;
	var len = string_length(_str);
	while (i <= len)
	{
		draw_text(xx, _y, string_char_at(_str, i));
		i++;
		xx += _w;
	}
}
function draw_text_outline(_x, _y, _str, _outcol)
{
	for (var yy = -1; yy <= 1; yy++)
	{
		for (var xx = -1; xx <= 1; xx++)
		{
			draw_text_color(_x+xx,_y+yy,_str,_outcol,_outcol,_outcol,_outcol,1);
		}
	}
	draw_text(_x,_y,_str);
}
