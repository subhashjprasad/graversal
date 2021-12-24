/// @desc Draw win background

if (waiting == true)
{
	draw_sprite(spr_bg_win, 0, 0, 0);
	draw_sprite(spr_level_passed, 0, display_get_gui_width() / 2 - sprite_get_width(spr_level_passed) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_level_passed) / 2 - 150);
}
