/// @desc Draw stuff

if (waiting == true)
{
	draw_sprite(spr_bg_lose, 0, 0, 0);
	draw_sprite(spr_level_failed, 0, display_get_gui_width() / 2 - sprite_get_width(spr_level_failed) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_level_failed) / 2 - 150);
}

if ((room == rm_main_menu) && (dont_draw == false)) draw_sprite(spr_title, 0, display_get_gui_width() / 2, 75);

if ((room == rm_main_menu) && (obj_virtualkey_credits.credit == true)) draw_sprite(spr_credits_text, 0, display_get_gui_width() / 2, display_get_gui_height() / 2);

instance_activate_object(obj_transition_controller);

if (global.transition == "start")
{
	tick += 1;
	if (tick > 2)
	{
		tra -= 1;
		tick = 0;
	}
	
	if (tra == 0)
	{
		global.transition = "game";
	}
}

if (global.transition == "end")
{
	tick += 1;
	if (tick > 2)
	{
		tra += 1;
		tick = 0;
	}
	
	if (tra == 8)
	{
		instance_activate_object(obj_level_controller);
		obj_level_controller.alarm[0] = 1;
		global.transition = "start";
	}
}