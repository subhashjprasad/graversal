/// @desc Set up virtual key

vkey_credits = virtual_key_add(display_get_gui_width() / 2 - sprite_get_width(spr_credits) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_credits) / 2 + 160, sprite_get_width(spr_credits), sprite_get_height(spr_credits), ord("M"));
clickable = false;
alarm[0] = 30;
credit = false;
clicked = false;