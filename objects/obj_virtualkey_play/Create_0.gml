/// @desc Set up virtual key

vkey_play = virtual_key_add(display_get_gui_width() / 2 - sprite_get_width(spr_play) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_play) / 2 - 15, sprite_get_width(spr_play), sprite_get_height(spr_play), ord("W"));
clickable = false;
alarm[0] = 30;
clicked = false;