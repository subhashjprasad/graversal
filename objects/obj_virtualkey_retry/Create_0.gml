/// @desc Set up virtual key

vkey_retry = virtual_key_add(display_get_gui_width() / 2 - sprite_get_width(spr_retry) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_retry) / 2 - 30, sprite_get_width(spr_retry), sprite_get_height(spr_retry), ord("O"));
clickable = false;
alarm[0] = 30;
clicked = false;