/// @desc Draw on GUI layer

if (credit == false) 
{
	if (clicked == false) draw_sprite(spr_credits, 0, display_get_gui_width() / 2 - sprite_get_width(spr_credits) / 2, display_get_gui_height() / 2 + 140);
	else draw_sprite_ext(spr_credits, 0, display_get_gui_width() / 2 - sprite_get_width(spr_credits) / 2, display_get_gui_height() / 2 + 140, 1, 1, 0, c_black, 0.5);
}

if (credit == true)
{
	draw_sprite(spr_bg_credits, 0, 0, 0);
}