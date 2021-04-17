/// @description Game over
if (gameover == false)
{
	with(obj_vpad)
	{
		instance_destroy();
	}

	gameover = true;
	scr_bgmstop();
	audio_play_sound(snd_outro,99,false);
	instance_create_layer(168,296,"layer_buttons",obj_retry);
	instance_create_layer(352,288,"layer_buttons",obj_zelda);
}