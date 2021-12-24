/// @desc Set up and update camera position

if (room != rm_level_select)
{
	#macro VIEW view_camera[0]		//Create camera macro

	camera_set_view_size(VIEW, view_width, view_height);		//Set view size

	if (instance_exists(obj_player))		
	{
		var new_x = clamp(obj_player.x - view_width / 2, 0, room_width - view_width);
		var new_y = clamp(obj_player.y - view_height / 2, 0, room_height - view_height + 50);
	
		var cur_x = camera_get_view_x(VIEW);
		var cur_y = camera_get_view_y(VIEW);
	
		var spd = 0.1
		camera_set_view_pos(VIEW, lerp(cur_x, new_x, spd), lerp (cur_y, new_y, spd));
	}
}