/// @desc Set up virtual key

vkey_resume = virtual_key_add(display_get_gui_width() / 2 - sprite_get_width(spr_resume) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_resume) / 2 - 30, sprite_get_width(spr_resume), sprite_get_height(spr_resume), ord("R"));
clickable = false;
alarm[0] = 30;
clicked = false;