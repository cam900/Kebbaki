/// @description Game over
if (gameover == false)
{
	gameover = true;
	scr_bgmstop();
	audio_play_sound(snd_outro,99,false);
	instance_create_layer(128,384,"layer_buttons",obj_retry);
	instance_create_layer(320,352,"layer_buttons",obj_zelda);
}