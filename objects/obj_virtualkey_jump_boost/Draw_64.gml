/// @desc Draw jump boost text and icons

if ((confirming == false) && (obj_virtualkey_tint_balls.confirming == false))
{
	draw_sprite(spr_jump_boost_text, 0, 25, 165);

	if (clicked0 == false) draw_sprite_ext(spr_jump_boost_icon, 0, 310, 171, 1, 1, 0, c_white, alpha_jump0);
	else draw_sprite_ext(spr_jump_boost_icon, 0, 310, 171, 1, 1, 0, c_black, 0.5);

	if (clicked1 == false) draw_sprite_ext(spr_jump_boost_icon, 1, 380, 171, 1, 1, 0, c_white, alpha_jump1);
	else draw_sprite_ext(spr_jump_boost_icon, 1, 380, 171, 1, 1, 0, c_black, 0.5);

	if (clicked2 == false) draw_sprite_ext(spr_jump_boost_icon, 2, 450, 171, 1, 1, 0, c_white, alpha_jump2);
	else draw_sprite_ext(spr_jump_boost_icon, 2, 450, 171, 1, 1, 0, c_black, 0.5);

	if (clicked3 == false) draw_sprite_ext(spr_jump_boost_icon, 3, 520, 171, 1, 1, 0, c_white, alpha_jump3);
	else draw_sprite_ext(spr_jump_boost_icon, 3, 520, 171, 1, 1, 0, c_black, 0.5);

	if (global.jump_arr[1] >= 1) alpha_jump1 = 1;
	if (global.jump_arr[2] >= 1) alpha_jump2 = 1;
	if (global.jump_arr[3] >= 1) alpha_jump3 = 1;

	if (global.jump_boost == 0) draw_sprite(spr_250_coins, 2, 310, 141);
	if (global.jump_boost == 1) draw_sprite(spr_250_coins, 2, 380, 141);
	if (global.jump_boost == 2) draw_sprite(spr_250_coins, 2, 450, 141);
	if (global.jump_boost == 3) draw_sprite(spr_250_coins, 2, 520, 141);

	draw_sprite(spr_250_coins, 6, 310, 206);

	if (alpha_jump1 * 2 - 1 == 0) draw_sprite(spr_250_coins, 3, 380, 206);
	else draw_sprite(spr_250_coins, alpha_jump1 * 2 - 1, 380, 206);

	if (alpha_jump2 * 2 - 1 == 0) draw_sprite(spr_250_coins, 4, 450, 206);
	else draw_sprite(spr_250_coins, alpha_jump2 * 2 - 1, 450, 206);

	if (alpha_jump3 * 2 - 1 == 0) draw_sprite(spr_250_coins, 5, 520, 206);
	else draw_sprite(spr_250_coins, alpha_jump3 * 2 - 1, 520, 206);
	
} else if (confirming == true)
{
	if (confirming_j == 1) draw_sprite(spr_confirm500, 0, display_get_gui_width() / 2, display_get_gui_height() / 2 - 50)
	if (confirming_j == 2) draw_sprite(spr_confirm1000, 0, display_get_gui_width() / 2, display_get_gui_height() / 2 - 50)
	if (confirming_j == 3) draw_sprite(spr_confirm1500, 0, display_get_gui_width() / 2, display_get_gui_height() / 2 - 50)
	
	if (clicked_yes == false) draw_sprite_ext(spr_yes, 0, display_get_gui_width() / 2 + 100, display_get_gui_height() / 2 + 50, 1, 1, 0, c_white, 1);
	else draw_sprite_ext(spr_yes, 0, display_get_gui_width() / 2 + 100, display_get_gui_height() / 2 + 50, 1, 1, 0, c_black, 0.5);
	
	if (clicked_no == false) draw_sprite_ext(spr_no, 0, display_get_gui_width() / 2 - 100, display_get_gui_height() / 2 + 50, 1, 1, 0, c_white, 1);
	else draw_sprite_ext(spr_no, 0, display_get_gui_width() / 2 - 100, display_get_gui_height() / 2 + 50, 1, 1, 0, c_black, 0.5);
}