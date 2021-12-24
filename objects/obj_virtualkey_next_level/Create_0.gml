/// @desc Set up virtual key

vkey_next_level = virtual_key_add(display_get_gui_width() / 2 - sprite_get_width(spr_next_level) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_next_level) / 2 - 30, sprite_get_width(spr_next_level), sprite_get_height(spr_next_level), ord("I"));
clickable = false;
alarm[0] = 30;
clicked = false;