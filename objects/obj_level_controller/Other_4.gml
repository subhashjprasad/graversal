/// @desc Start counter and set background

count = 0;
alarm_set(3, 10);
if ((room != rm_control) && (room != rm_level_select) && (room != rm_main_menu) && (room != rm_store))
{
	starting = 1;
} else starting = 0;

if ((room != rm_control) && (room != rm_level_select) && (room != rm_main_menu) && (room != rm_store))
{
	if (room_width > 700)
	{
		var lay_id = layer_get_id("Background");
		var back_id = layer_background_get_id(lay_id);
		layer_background_sprite(back_id, spr_bg_game_horizontal);
	} else
	{
		var lay_id = layer_get_id("Background");
		var back_id = layer_background_get_id(lay_id);
		layer_background_sprite(back_id, spr_bg_game_vertical);
	}
}