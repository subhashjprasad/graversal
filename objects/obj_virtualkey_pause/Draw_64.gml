/// @desc Draw on GUI layer

if (global.paused == true)
{
	draw_sprite(spr_bg_pause, 0, 0, 0);
	draw_sprite(spr_game_paused, 0, display_get_gui_width() / 2 - sprite_get_width(spr_game_paused) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_game_paused) / 2 - 150);
}

if ((room != rm_level_select) && (room != rm_main_menu) && (room != rm_store) && (global.paused == false))
{
	if (clicked = false) draw_sprite(spr_pause, 0, display_get_gui_width() - 50, 20);
	else draw_sprite_ext(spr_pause, 0, display_get_gui_width() - 50, 20, 1, 1, 0, c_black, 0.5);
}
