/// @desc Draw on GUI layer

draw_self();

//Draw boundary based on GUI size

if (room != rm_level_select)
{
	draw_sprite(spr_keyboundary, 0, display_get_gui_width() / 2 + 10, display_get_gui_height() - 10);		//Draw left prong
	for (i = display_get_gui_width() / 2 + 30; i <= display_get_gui_width() - 55; i += 1)		//Draw connector
	{
		draw_sprite(spr_keyboundary, 1, i, display_get_gui_height() - 10);
	}
	draw_sprite(spr_keyboundary, 2, display_get_gui_width() - 55, display_get_gui_height() - 10);		//Draw right prong
	draw_sprite(spr_keyboundary, 5, mean(display_get_gui_width() / 2, display_get_gui_width()), display_get_gui_height() - 40);		//Draw symbol
}