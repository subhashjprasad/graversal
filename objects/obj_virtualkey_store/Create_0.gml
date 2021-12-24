/// @desc Set up virtual key

vkey_store = virtual_key_add(display_get_gui_width() / 2 - sprite_get_width(spr_store) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_store) / 2 + 80, sprite_get_width(spr_store), sprite_get_height(spr_store), ord("S"));
clickable = false;
alarm[0] = 30;
clicked = false;