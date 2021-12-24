/// @desc Draw on GUI layer

if (clicked == false)
{
	if ((state == 3) || (state == 4) || (state == 5)) draw_sprite(spr_back_to_main_menu, state, display_get_gui_width() / 2 - sprite_get_width(spr_back_to_main_menu) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_back_to_main_menu) / 2 + 160);
	else draw_sprite(spr_back_to_main_menu, state, display_get_gui_width() / 2 - sprite_get_width(spr_back_to_main_menu) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_back_to_main_menu) / 2 + 100);
} else
{
	if ((state == 3) || (state == 4) || (state == 5)) draw_sprite_ext(spr_back_to_main_menu, state, display_get_gui_width() / 2 - sprite_get_width(spr_back_to_main_menu) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_back_to_main_menu) / 2 + 160, 1, 1, 0, c_black, 0.5);
	else draw_sprite_ext(spr_back_to_main_menu, state, display_get_gui_width() / 2 - sprite_get_width(spr_back_to_main_menu) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_back_to_main_menu) / 2 + 100, 1, 1, 0, c_black, 0.5);
}