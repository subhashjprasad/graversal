/// @desc Check stuff

//Check if dead
if (dead == true) && (once == false) && (instance_exists(obj_player))
{
	draw_x = obj_player.x;
	draw_y = obj_player.y;
	image_ind = obj_player.image_index;
	alarm[0] = 3;
	once = true;
	global.dead = true;
	instance_destroy(obj_player);
}

if (dead == true) exit;

//Gravity check timer
if ((room != rm_level_select) && (room != rm_main_menu) && (room != rm_store) && (global.tutorial_completed == 3))
{
	if (gravity_tick < gravity_interval * 60)		//If the gravity hasnt reached the switch time yet
	{
		gravity_tick += 1;		//Update the gravity timer
	} else		//If the timer is up
	{
		//Switch gravity
		global.grv = -global.grv;
		audio_play_sound(snd_gravity_switch, 0, 0);
		if (global.grv_down == true)
		{
			global.grv_down = false;
			if (instance_exists(obj_player)) obj_player.image_index = 8;
		} else 
		{
			global.grv_down = true;
			if (instance_exists(obj_player)) obj_player.image_index = 0;
		}
		gravity_tick = 0;		//Reset gravity timer
	}
}

//Skip control room
if (room == rm_control)
{
	room_goto(rm_main_menu);
}

//Quick room skip
if (keyboard_check_pressed(vk_enter))
{
	room_goto_next();
	global.current_level += 1;
} else if (keyboard_check_pressed(vk_backspace))
{
	room_goto_previous();
	global.current_level -= 1;
}