/// @desc Draw on GUI layer

if ((confirming == false) && (obj_virtualkey_jump_boost.confirming == false))
{
	draw_sprite(spr_colors_text, 0, 25, 75);

	if (clicked_maroon == false) draw_sprite_ext(spr_player_tint, 0, 190, 81, 1, 1, 0, c_maroon, alpha_maroon);
	else draw_sprite_ext(spr_player_tint, 0, 190, 81, 1, 1, 0, c_black, 0.5);

	if (clicked_red == false) draw_sprite_ext(spr_player_tint, 0, 240, 81, 1, 1, 0, c_red, alpha_red);
	else draw_sprite_ext(spr_player_tint, 0, 240, 81, 1, 1, 0, c_black, 0.5);

	if (clicked_orange == false) draw_sprite_ext(spr_player_tint, 0, 290, 81, 1, 1, 0, c_orange, alpha_orange);
	else draw_sprite_ext(spr_player_tint, 0, 290, 81, 1, 1, 0, c_black, 0.5);

	if (clicked_yellow == false) draw_sprite_ext(spr_player_tint, 0, 340, 81, 1, 1, 0, c_yellow, alpha_yellow);
	else draw_sprite_ext(spr_player_tint, 0, 340, 81, 1, 1, 0, c_black, 0.5);

	if (clicked_olive == false) draw_sprite_ext(spr_player_tint, 0, 390, 81, 1, 1, 0, c_olive, alpha_olive);
	else draw_sprite_ext(spr_player_tint, 0, 390, 81, 1, 1, 0, c_black, 0.5);

	if (clicked_lime == false) draw_sprite_ext(spr_player_tint, 0, 440, 81, 1, 1, 0, c_lime, alpha_lime);
	else draw_sprite_ext(spr_player_tint, 0, 440, 81, 1, 1, 0, c_black, 0.5);

	if (clicked_green == false) draw_sprite_ext(spr_player_tint, 0, 490, 81, 1, 1, 0, c_green, alpha_green);
	draw_sprite_ext(spr_player_tint, 0, 490, 81, 1, 1, 0, c_black, 0.5);

	if (clicked_aqua == false) draw_sprite_ext(spr_player_tint, 0, 540, 81, 1, 1, 0, c_aqua, alpha_aqua);
	else draw_sprite_ext(spr_player_tint, 0, 540, 81, 1, 1, 0, c_black, 0.5);

	if (clicked_blue == false) draw_sprite_ext(spr_player_tint, 0, 590, 81, 1, 1, 0, c_blue, alpha_blue);
	else draw_sprite_ext(spr_player_tint, 0, 590, 81, 1, 1, 0, c_black, 0.5);

	if (clicked_navy == false) draw_sprite_ext(spr_player_tint, 0, 640, 81, 1, 1, 0, c_navy, alpha_navy);
	else draw_sprite_ext(spr_player_tint, 0, 640, 81, 1, 1, 0, c_black, 0.5);

	if (clicked_purple == false) draw_sprite_ext(spr_player_tint, 0, 690, 81, 1, 1, 0, c_purple, alpha_purple);
	else draw_sprite_ext(spr_player_tint, 0, 690, 81, 1, 1, 0, c_black, 0.5);

	if (clicked_fuchsia == false) draw_sprite_ext(spr_player_tint, 0, 740, 81, 1, 1, 0, c_fuchsia, alpha_fuchsia);
	else draw_sprite_ext(spr_player_tint, 0, 740, 81, 1, 1, 0, c_black, 0.5);

	if (global.colors[0] >= 1) alpha_maroon = 1;
	if (global.colors[1] >= 1) alpha_red = 1;
	if (global.colors[2] >= 1) alpha_orange = 1;
	if (global.colors[3] >= 1) alpha_yellow = 1;
	if (global.colors[4] >= 1) alpha_olive = 1;
	if (global.colors[5] >= 1) alpha_lime = 1;
	if (global.colors[6] >= 1) alpha_green = 1;
	if (global.colors[7] >= 1) alpha_aqua = 1;
	if (global.colors[8] >= 1) alpha_blue = 1;
	if (global.colors[9] >= 1) alpha_navy = 1;
	if (global.colors[10] >= 1) alpha_purple = 1;
	if (global.colors[11] >= 1) alpha_fuchsia = 1;


	draw_sprite(spr_250_coins, alpha_maroon * 2 - 1, 190, 111);
	draw_sprite(spr_250_coins, alpha_red * 2 - 1, 240, 111);
	draw_sprite(spr_250_coins, alpha_orange * 2 - 1, 290, 111);
	draw_sprite(spr_250_coins, alpha_yellow * 2 - 1, 340, 111);
	draw_sprite(spr_250_coins, alpha_olive * 2 - 1, 390, 111);
	draw_sprite(spr_250_coins, alpha_lime * 2 - 1, 440, 111);
	draw_sprite(spr_250_coins, alpha_green * 2 - 1, 490, 111);
	draw_sprite(spr_250_coins, alpha_aqua * 2 - 1, 540, 111);
	draw_sprite(spr_250_coins, alpha_blue * 2 - 1, 590, 111);
	draw_sprite(spr_250_coins, alpha_navy * 2 - 1, 640, 111);
	draw_sprite(spr_250_coins, alpha_purple * 2 - 1, 690, 111);
	draw_sprite(spr_250_coins, alpha_fuchsia * 2 - 1, 740, 111);

	if (global.tint == c_maroon) draw_sprite(spr_250_coins, 2, 190, 51);
	if (global.tint == c_red) draw_sprite(spr_250_coins, 2, 240, 51);
	if (global.tint == c_orange) draw_sprite(spr_250_coins, 2, 290, 51);
	if (global.tint == c_yellow) draw_sprite(spr_250_coins, 2, 340, 51);
	if (global.tint == c_olive) draw_sprite(spr_250_coins, 2, 390, 51);
	if (global.tint == c_lime) draw_sprite(spr_250_coins, 2, 440, 51);
	if (global.tint == c_green) draw_sprite(spr_250_coins, 2, 490, 51);
	if (global.tint == c_aqua) draw_sprite(spr_250_coins, 2, 540, 51);
	if (global.tint == c_blue) draw_sprite(spr_250_coins, 2, 590, 51);
	if (global.tint == c_navy) draw_sprite(spr_250_coins, 2, 640, 51);
	if (global.tint == c_purple) draw_sprite(spr_250_coins, 2, 690, 51);
	if (global.tint == c_fuchsia) draw_sprite(spr_250_coins, 2, 740, 51);
} else if (confirming == true)
{
	draw_sprite(spr_confirm250, 0, display_get_gui_width() / 2, display_get_gui_height() / 2 - 50)
	
	if (clicked_yes == false) draw_sprite_ext(spr_yes, 0, display_get_gui_width() / 2 + 100, display_get_gui_height() / 2 + 50, 1, 1, 0, c_white, 1);
	else draw_sprite_ext(spr_yes, 0, display_get_gui_width() / 2 + 100, display_get_gui_height() / 2 + 50, 1, 1, 0, c_black, 0.5);
	
	if (clicked_no == false) draw_sprite_ext(spr_no, 0, display_get_gui_width() / 2 - 100, display_get_gui_height() / 2 + 50, 1, 1, 0, c_white, 1);
	else draw_sprite_ext(spr_no, 0, display_get_gui_width() / 2 - 100, display_get_gui_height() / 2 + 50, 1, 1, 0, c_black, 0.5);
	
}
