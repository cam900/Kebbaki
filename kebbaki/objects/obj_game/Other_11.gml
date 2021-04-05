/// @description Pressed Arrow
if (string_length(curr_str) > 1)
{
	audio_play_sound(snd_nani,0,false);
	curr_str = string_copy(curr_str, 2, string_length(curr_str)-1);
	strx -= 20;
	global.curr_score++;
}