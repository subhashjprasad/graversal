/// @desc Confirm

clicked_no = false;

audio_play_sound(snd_button_click, 0, 0);
	
vkey_tint_ball0 = virtual_key_add(190, 81, sprite_get_width(spr_player_tint), sprite_get_height(spr_player_tint), vk_numpad0);
vkey_tint_ball1 = virtual_key_add(240, 81, sprite_get_width(spr_player_tint), sprite_get_height(spr_player_tint), vk_numpad1);
vkey_tint_ball2 = virtual_key_add(290, 81, sprite_get_width(spr_player_tint), sprite_get_height(spr_player_tint), vk_numpad2);
vkey_tint_ball3 = virtual_key_add(340, 81, sprite_get_width(spr_player_tint), sprite_get_height(spr_player_tint), vk_numpad3);
vkey_tint_ball4 = virtual_key_add(390, 81, sprite_get_width(spr_player_tint), sprite_get_height(spr_player_tint), vk_numpad4);
vkey_tint_ball5 = virtual_key_add(440, 81, sprite_get_width(spr_player_tint), sprite_get_height(spr_player_tint), vk_numpad5);
vkey_tint_ball6 = virtual_key_add(490, 81, sprite_get_width(spr_player_tint), sprite_get_height(spr_player_tint), vk_numpad6);
vkey_tint_ball7 = virtual_key_add(540, 81, sprite_get_width(spr_player_tint), sprite_get_height(spr_player_tint), vk_numpad7);
vkey_tint_ball8 = virtual_key_add(590, 81, sprite_get_width(spr_player_tint), sprite_get_height(spr_player_tint), vk_numpad8);
vkey_tint_ball9 = virtual_key_add(640, 81, sprite_get_width(spr_player_tint), sprite_get_height(spr_player_tint), vk_numpad9);
vkey_tint_ball10 = virtual_key_add(690, 81, sprite_get_width(spr_player_tint), sprite_get_height(spr_player_tint), vk_pagedown);
vkey_tint_ball11 = virtual_key_add(740, 81, sprite_get_width(spr_player_tint), sprite_get_height(spr_player_tint), vk_pageup);
obj_virtualkey_jump_boost.alarm[2] = 1;

virtual_key_delete(vkey_confirm);
virtual_key_delete(vkey_deny);
confirming = false;