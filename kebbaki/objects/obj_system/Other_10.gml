/// @description Initialize Game
if (room == room_init)
{
	global.soundloaded = audio_group_is_loaded(audiogroup_default) && audio_sound_is_playable(snd_intro) && audio_sound_is_playable(snd_loop) && audio_sound_is_playable(snd_nani) && audio_sound_is_playable(snd_outro);
	if (global.soundloaded)
	{
		room_goto(room_intro);
	}
}