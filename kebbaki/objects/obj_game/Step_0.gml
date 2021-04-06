/// @description Step each frame
// 진행상황에 따른 난이도 증가; delta_time 사용: 렉으로 인한 난이도 하락을 막기 위함
strx += (1 + (floor(global.curr_score / 100) / 11)) * ((delta_time * 60) / 1000000);
if (strx >= 660)
{
	event_user(0);
	strx = min(3000,strx); // -3000
}
else
{
	// 화살표 추가
	while (((strx/20)+1) > string_length(curr_str))
	{
		// 중복 방지
		switch (string_char_at(curr_str,string_length(curr_str)))
		{
		case "→": // right
			curr_str += choose("←","↑","↓");
			break
		case "←": // left
			curr_str += choose("→","↑","↓");
			break;
		case "↑": // up
			curr_str += choose("→","←","↓");
			break;
		case "↓": // down
			curr_str += choose("→","←","↑");
			break;
		}
	}
	// 원본의 빡빡한 키인식 재현
	var keyfield = (keyboard_check_released(vk_right) << 0) | (keyboard_check_released(vk_left) << 1) | (keyboard_check_released(vk_up) << 2) | (keyboard_check_released(vk_down) << 3);
	keyfield |= (keyboard_check_pressed(vk_right) << 4) | (keyboard_check_pressed(vk_left) << 5) | (keyboard_check_pressed(vk_up) << 6) | (keyboard_check_pressed(vk_down) << 7);
	keyfield |= (keyboard_check(vk_right) << 8) | (keyboard_check(vk_left) << 9) | (keyboard_check(vk_up) << 10) | (keyboard_check(vk_down) << 11);
	switch (string_char_at(curr_str,0))
	{
	case "→": // right
		if (keyfield == 0x01)
		{
			event_user(1);
		}
		break
	case "←": // left
		if (keyfield == 0x02)
		{
			event_user(1);
		}
		break;
	case "↑": // up
		if (keyfield == 0x04)
		{
			event_user(1);
		}
		break;
	case "↓": // down
		if (keyfield == 0x08)
		{
			event_user(1);
		}
		break;
	}
	strx = max(0,strx);
	bgp = floor(strx / 220);
	sprite_index = bgs[bgp][0];
	temp_index += ((delta_time*30)/1000000);
	// 자연스럽게 루프시키는 코드
	if ((sprite_index == spr_status2) || (sprite_index == spr_status3))
	{
		while (temp_index >= ((sprite_get_number(sprite_index)-1) * 2))
		{
			temp_index -= ((sprite_get_number(sprite_index)-1) * 2);
		}
	}
	else
	{
		while (temp_index >= (sprite_get_number(sprite_index)))
		{
			temp_index -= (sprite_get_number(sprite_index));
		}
	}
}