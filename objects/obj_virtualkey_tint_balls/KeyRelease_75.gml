/// @desc Confirm

clicked_yes = false;

audio_play_sound(snd_button_click, 0, 0);
	switch(global.tint)
	{
		case c_maroon:
			global.colors[0] = 1;
			break;
		case c_red:
			global.colors[1] = 1;
			break;
		case c_orange:
			global.colors[2] = 1;
			break;
		case c_yellow:
			global.colors[3] = 1;
			break;
		case c_olive:
			global.colors[4] = 1;
			break;
		case c_lime:
			global.colors[5] = 1;
			break;
		case c_green:
			global.colors[6] = 1;
			break;
		case c_aqua:
			global.colors[7] = 1;
			break;
		case c_blue:
			global.colors[8] = 1;
			break;
		case c_navy:
			global.colors[9] = 1;
			break;
		case c_purple:
			global.colors[10] = 1;
			break;
		case c_fuchsia:
			global.colors[11] = 1;
			break;
		case c_white:
			global.colors[12] = 1;
			break;
	}

switch (confirming_c)
{
	case 0:
		global.coins -= 250;
		alpha_maroon = 1;
		global.colors[0] = 2;
		global.tint = c_maroon;
		break;
	case 1:
		global.coins -= 250;
		alpha_red = 1;
		global.colors[1] = 2;
		global.tint = c_red;
		break;
	case 2:
		global.coins -= 250;
		alpha_orange = 1;
		global.colors[2] = 2;
		global.tint = c_orange;
		break;
	case 3:
		global.coins -= 250;
		alpha_yellow = 1;
		global.colors[3] = 2;
		global.tint = c_yellow;
		break;
	case 4:
		global.coins -= 250;
		alpha_olive = 1;
		global.colors[4] = 2;
		global.tint = c_olive;
		break;
	case 5:
		global.coins -= 250;
		alpha_lime = 1;
		global.colors[5] = 2;
		global.tint = c_lime;
		break;
	case 6:
		global.coins -= 250;
		alpha_green = 1;
		global.colors[6] = 2;
		global.tint = c_green;
		break;
	case 7:
		global.coins -= 250;
		alpha_aqua = 1;
		global.colors[7] = 2;
		global.tint = c_aqua;
		break;
	case 8:
		global.coins -= 250;
		alpha_blue = 1;
		global.colors[8] = 2;
		global.tint = c_blue;
		break;
	case 9:
		global.coins -= 250;
		alpha_navy = 1;
		global.colors[9] = 2;
		global.tint = c_navy;
		break;
	case 10:
		global.coins -= 250;
		alpha_purple = 1;
		global.colors[10] = 2;
		global.tint = c_purple;
		break;
	case 11:
		global.coins -= 250;
		alpha_fuchsia = 1;
		global.colors[11] = 2;
		global.tint = c_fuchsia;
		break;
}

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
obj_save_and_load.alarm[0] = 1;