/// @description Initialize
draw_set_font(Font1);
draw_set_color(c_white);
if (!audio_group_is_loaded(audiogroup_default))
{
	audio_group_load(audiogroup_default);
}
global.bgmstatus = noone;
global.soundloaded = audio_group_is_loaded(audiogroup_default) && audio_sound_is_playable(snd_intro) && audio_sound_is_playable(snd_loop) && audio_sound_is_playable(snd_nani) && audio_sound_is_playable(snd_outro);
global.curr_score = 0;
event_user(0);