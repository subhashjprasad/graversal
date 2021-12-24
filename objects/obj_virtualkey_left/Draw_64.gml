/// @desc Draw self and boundary

draw_self();

//Draw boundary based on GUI size
if (room != rm_level_select)
{
	draw_sprite(spr_keyboundary, 0, 35, display_get_gui_height() - 10);		//Draw left prong
	for (i = 55; i <= display_get_gui_width() / 2 - 30; i+= 1)		//Draw connector
	{
		draw_sprite(spr_keyboundary, 1, i, display_get_gui_height() - 10);
	}
	draw_sprite(spr_keyboundary, 2, display_get_gui_width() / 2 - 30, display_get_gui_height() - 10);		//Draw right prong
	draw_sprite(spr_keyboundary, 4, mean(0, display_get_gui_width() / 2), display_get_gui_height() - 34);		//Draw symbol
}