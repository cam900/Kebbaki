/// @description Initialize
scr_bgmstop();
scr_bgmplay(snd_loop,true);
randomize();
curr_str = choose("→","←","↑","↓");
strx = 0;
// 어레이 형식: [[sprite index, string index, x, y], [sprite index, string index, x, y], ...]
bgs = [[spr_status1,1,416,209],[spr_status2,2,101,167],[spr_status3,3,385,192]];
bgp = 0;
gameover = false;
temp_index = ((delta_time*30)/1000000);