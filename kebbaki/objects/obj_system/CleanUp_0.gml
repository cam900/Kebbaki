/// @description Insert description here
// You can write your code in this editor
audio_stop_all();
if (audio_group_is_loaded(audiogroup_default))
{
	audio_group_unload(audiogroup_default);
}