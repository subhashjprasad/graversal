/// @desc Purchase if enough coins

if (global.jump_arr[1] == 0)
{
	if (global.coins >= 500)
	{
		clicked1 = false;
		
		confirming = true;
		obj_virtualkey_tint_balls.alarm[1] = 1;
		virtual_key_delete(vkey_jump_boost0);
		virtual_key_delete(vkey_jump_boost1);
		virtual_key_delete(vkey_jump_boost2);
		virtual_key_delete(vkey_jump_boost3);
		vkey_confirm = virtual_key_add(display_get_gui_width() / 2 + 100 - (sprite_get_width(spr_yes) / 2), display_get_gui_height() / 2 + 50 - (sprite_get_height(spr_yes) / 2), sprite_get_width(spr_yes), sprite_get_height(spr_yes), ord("M"));
		vkey_deny = virtual_key_add(display_get_gui_width() / 2 - 100 - (sprite_get_width(spr_no) / 2), display_get_gui_height() / 2 + 50 - (sprite_get_height(spr_no) / 2), sprite_get_width(spr_no), sprite_get_height(spr_no), ord("N"));
		confirming_j = 1;
	}
}

if (global.jump_arr[1] == 2)
{
	clicked1 = false;
	obj_save_and_load.alarm[0] = 1;
}