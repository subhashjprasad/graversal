/// @desc Draw coin amount and pause screen

if (starting > 0)
{
	draw_set_alpha(starting);
	draw_sprite(spr_levels_title, global.current_level - 1, display_get_gui_width() / 2, display_get_gui_height() / 2);
	draw_set_alpha(1);
}

if ((room != rm_level_select) && (room != rm_main_menu) && (room != rm_store))
{
	draw_sprite_ext(spr_coin_text, 0, 15, 15, 1, 1, 0, c_white, 0.5);
	draw_sprite_ext(spr_coin_text, thousands + 1, 115, 13, 1, 1, 0, c_white, 0.5);
	draw_sprite_ext(spr_coin_text, hundreds + 1, 140, 13, 1, 1, 0, c_white, 0.5);
	draw_sprite_ext(spr_coin_text, tens + 1, 165, 13, 1, 1, 0, c_white, 0.5);
	draw_sprite_ext(spr_coin_text, ones + 1, 190, 13, 1, 1, 0, c_white, 0.5);
} else if ((room != rm_level_select) && (room != rm_main_menu))
{
	draw_sprite(spr_coin_text, 0, 15, 15);
	draw_sprite(spr_coin_text, thousands + 1, 115, 13);
	draw_sprite(spr_coin_text, hundreds + 1, 140, 13);
	draw_sprite(spr_coin_text, tens + 1, 165, 13);
	draw_sprite(spr_coin_text, ones + 1, 190, 13);
}

if ((global.tutorial_completed == 0) && (room != rm_level_select) && (room != rm_main_menu) && (room != rm_store))
{
	draw_set_alpha(0.5);
	draw_set_color(c_white);
	draw_rectangle(0, 0, display_get_gui_width() / 2, display_get_gui_height(), false);
	draw_sprite(spr_press_here_left, 0, display_get_gui_width() / 4, display_get_gui_height() / 2);
	draw_set_alpha(1);
}

if ((global.tutorial_completed == 2) && (room != rm_level_select) && (room != rm_main_menu) && (room != rm_store))
{
	draw_set_alpha(0.5);
	draw_set_color(c_white);
	draw_rectangle(display_get_gui_width() / 2, 0, display_get_gui_width(), display_get_gui_height(), false);
	draw_sprite(spr_press_here_jump, 0, display_get_gui_width() / 4 + display_get_gui_width() / 2, display_get_gui_height() / 2);
	draw_set_alpha(1);
}