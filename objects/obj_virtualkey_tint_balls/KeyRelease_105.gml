/// @desc Purchase if enough coins

if (global.colors[9] == 0)
{
	if (global.coins >= 250)
	{
		clicked_navy = false;
		
		confirming = true;
		virtual_key_delete(vkey_tint_ball0);
		virtual_key_delete(vkey_tint_ball1);
		virtual_key_delete(vkey_tint_ball2);
		virtual_key_delete(vkey_tint_ball3);
		virtual_key_delete(vkey_tint_ball4);
		virtual_key_delete(vkey_tint_ball5);
		virtual_key_delete(vkey_tint_ball6);
		virtual_key_delete(vkey_tint_ball7);
		virtual_key_delete(vkey_tint_ball8);
		virtual_key_delete(vkey_tint_ball9);
		virtual_key_delete(vkey_tint_ball10);
		virtual_key_delete(vkey_tint_ball11);
		obj_virtualkey_jump_boost.alarm[1] = 1;
		vkey_confirm = virtual_key_add(display_get_gui_width() / 2 + 100 - (sprite_get_width(spr_yes) / 2), display_get_gui_height() / 2 + 50 - (sprite_get_height(spr_yes) / 2), sprite_get_width(spr_yes), sprite_get_height(spr_yes), ord("K"));
		vkey_deny = virtual_key_add(display_get_gui_width() / 2 - 100 - (sprite_get_width(spr_no) / 2), display_get_gui_height() / 2 + 50 - (sprite_get_height(spr_no) / 2), sprite_get_width(spr_no), sprite_get_height(spr_no), ord("J"));
		confirming_c = 9;
	}
}

if (global.colors[9] == 2)
{
	clicked_navy = false;
	obj_save_and_load.alarm[0] = 1;
}