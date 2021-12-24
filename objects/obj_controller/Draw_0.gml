/// @desc Draw death sprite

if (dead == true)
{
	if (sub < 8)
	{
		draw_sprite(spr_player, image_ind, draw_x, draw_y);
	}
	
	draw_sprite(spr_player_destroy, sub, draw_x, draw_y);
}
