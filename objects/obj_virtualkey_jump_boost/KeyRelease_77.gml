/// @desc Purchase

clicked_yes = false;

audio_play_sound(snd_button_click, 0, 0);
	switch(global.jump_boost)
	{
		case 0:
			global.jump_arr[0] = 1;
			break;
		case 1:
			global.jump_arr[1] = 1;
			break;
		case 2:
			global.jump_arr[2] = 1;
			break;
		case 3:
			global.jump_arr[3] = 1;
			break;
	}
	
switch (confirming_j)
{
	case 1:
		global.coins -= 500;
		alpha_jump1 = 1;
		global.jump_arr[1] = 2;
		global.jump_boost = 1;
		break;
	case 2:
		global.coins -= 1000;
		alpha_jump2 = 1;
		global.jump_arr[2] = 2;
		global.jump_boost = 2;
		break;
	case 3:
		global.coins -= 1500;
		alpha_jump3 = 1;
		global.jump_arr[3] = 2;
		global.jump_boost = 3;
		break;
}

vkey_jump_boost0 = virtual_key_add(310, 171, sprite_get_width(spr_jump_boost_icon), sprite_get_height(spr_jump_boost_icon), vk_up);
vkey_jump_boost1 = virtual_key_add(380, 171, sprite_get_width(spr_jump_boost_icon), sprite_get_height(spr_jump_boost_icon), vk_down);
vkey_jump_boost2 = virtual_key_add(450, 171, sprite_get_width(spr_jump_boost_icon), sprite_get_height(spr_jump_boost_icon), vk_left);
vkey_jump_boost3 = virtual_key_add(520, 171, sprite_get_width(spr_jump_boost_icon), sprite_get_height(spr_jump_boost_icon), vk_right);
obj_virtualkey_tint_balls.alarm[2] = 1;

virtual_key_delete(vkey_confirm);
virtual_key_delete(vkey_deny);
confirming = false;
obj_save_and_load.alarm[0] = 1;
	
	