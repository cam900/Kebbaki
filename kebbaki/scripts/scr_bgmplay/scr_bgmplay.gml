// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_bgmplay(_soundid,_loop)
{
	global.bgmstatus = audio_play_sound(_soundid,99,_loop);
}