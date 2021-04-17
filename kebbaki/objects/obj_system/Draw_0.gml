/// @description Insert description here
// You can write your code in this editor
if (room == room_init)
{
	draw_sprite(spr_loading, 0, room_width/2, room_height/2);
	var yy = 0;
	draw_text(80,yy,webgl_enabled ? "WebGL Enabled" : "WebGL Disabled");
	yy += 20;
	if (!global.soundloaded)
	{
		draw_text(80,yy,"Loading Sound data...");
		yy += 20;
	}
}