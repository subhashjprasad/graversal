/// @desc deny

clicked_no = false;

audio_play_sound(snd_button_click, 0, 0);
	
vkey_jump_boost0 = virtual_key_add(310, 171, sprite_get_width(spr_jump_boost_icon), sprite_get_height(spr_jump_boost_icon), vk_up);
vkey_jump_boost1 = virtual_key_add(380, 171, sprite_get_width(spr_jump_boost_icon), sprite_get_height(spr_jump_boost_icon), vk_down);
vkey_jump_boost2 = virtual_key_add(450, 171, sprite_get_width(spr_jump_boost_icon), sprite_get_height(spr_jump_boost_icon), vk_left);
vkey_jump_boost3 = virtual_key_add(520, 171, sprite_get_width(spr_jump_boost_icon), sprite_get_height(spr_jump_boost_icon), vk_right);
obj_virtualkey_tint_balls.alarm[2] = 1;

virtual_key_delete(vkey_confirm);
virtual_key_delete(vkey_deny);
confirming = false;