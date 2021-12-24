/// @desc Set up virtual key

if ((state == 3) || (state == 4) || (state == 5)) vkey_back_to_main_menu = virtual_key_add(display_get_gui_width() / 2 - sprite_get_width(spr_back_to_main_menu) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_back_to_main_menu) / 2 + 160 + sprite_get_height(spr_back_to_main_menu) / 4, sprite_get_width(spr_back_to_main_menu), sprite_get_height(spr_back_to_main_menu), ord("B"));
else vkey_back_to_main_menu = virtual_key_add(display_get_gui_width() / 2 - sprite_get_width(spr_back_to_main_menu) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_back_to_main_menu) / 2 + 100, sprite_get_width(spr_back_to_main_menu), sprite_get_height(spr_back_to_main_menu), ord("B"));
