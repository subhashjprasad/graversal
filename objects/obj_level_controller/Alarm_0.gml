/// @desc Go to designated room

switch (global.level_selected)
{
	case 0: 
		room_goto(rm_level_select); 
		break;
	case 1: 
		room_goto(rm_level1); 
		break;
	case 2: 
		room_goto(rm_level2);  
		break;
	case 3: 
		room_goto(rm_level3);  
		break;
	case 4:  
		room_goto(rm_level4);  
		break;
	case 5:  
		room_goto(rm_level5);  
		break;
	case 6:  
		room_goto(rm_level6);  
		break;
	case 7:  
		room_goto(rm_level7);  
		break;
	case 8:  
		room_goto(rm_level8);  
		break;
	case 9:  
		room_goto(rm_level9);  
		break;
	case 10:  
		room_goto(rm_level10);  
		break;
	case 11:  
		room_goto(rm_level11);  
		break;
	case 12:  
		room_goto(rm_level12);  
		break;
	case 13:  
		room_goto(rm_level13);  
		break;
	case 14:  
		room_goto(rm_level14);  
		break;
	case 15:  
		room_goto(rm_level15);  
		break;
	case 16:  
		room_goto(rm_level16);  
		break;
	case 17:  
		room_goto(rm_level17);  
		break;
	case 18:  
		room_goto(rm_level18);  
		break;
	case 19:  
		room_goto(rm_level19);  
		break;
	case 20:  
		room_goto(rm_level20);  
		break;
	case 21:  
		room_goto(rm_level21);  
		break;
	case 22:  
		room_goto(rm_level22);  
		break;
	case 23:  
		room_goto(rm_level23);  
		break;
	case 24:  
		room_goto(rm_level24);  
		break;
	case 25:  
		room_goto(rm_level25);  
		break;
	case 26:  
		room_goto(rm_level26);  
		break;
	case 27:  
		room_goto(rm_level27);  
		break;
	case 28:  
		room_goto(rm_level28);  
		break;
	case 29:  
		room_goto(rm_level29);  
		break;
	case 30:  
		room_goto(rm_level30);  
		break;
	case 31:  
		room_goto(rm_level31);  
		break;
	case 32:  
		room_goto(rm_level32);  
		break;
	case 33:  
		room_goto(rm_level33);  
		break;
	case 34:  
		room_goto(rm_level34);  
		break;
	case 35:  
		room_goto(rm_level35);  
		break;
	case 36:  
		room_goto(rm_level36);  
		break;
	case 37:  
		room_goto(rm_level37);  
		break;
	case 38:  
		room_goto(rm_level38);  
		break;
	case 39:  
		room_goto(rm_level39);  
		break;
	case 40:  
		room_goto(rm_level40);  
		break;
	case 41:  
		room_goto(rm_level41);  
		break;
	case 42:  
		room_goto(rm_level42);  
		break;
	case 43:  
		room_goto(rm_level43);  
		break;
	case 44:  
		room_goto(rm_level44);  
		break;
	case 45:  
		room_goto(rm_level45);  
		break;
	case 46:  
		room_goto(rm_level46);  
		break;
	case 47:  
		room_goto(rm_level47);  
		break;
	case 48:  
		room_goto(rm_level48);  
		break;
	case 49:  
		room_goto(rm_store);  
		break;
	case 50:  
		if (instance_exists(obj_virtualkey_retry))
		{
			with (obj_virtualkey_retry) virtual_key_delete(vkey_retry);
			instance_destroy(obj_virtualkey_retry);
		}
		if (instance_exists(obj_virtualkey_back_to_main_menu))
		{
			with (obj_virtualkey_back_to_main_menu) virtual_key_delete(vkey_back_to_main_menu);
			instance_destroy(obj_virtualkey_back_to_main_menu);
		}
		if (instance_exists(obj_virtualkey_next_level))
		{
			with (obj_virtualkey_next_level) virtual_key_delete(vkey_next_level);
			instance_destroy(obj_virtualkey_next_level);
		}
		instance_activate_all();
		room_goto(rm_main_menu);
		break;
	case 51:
		if (instance_exists(obj_virtualkey_retry))
		{
			with (obj_virtualkey_retry) virtual_key_delete(vkey_retry);
			instance_destroy(obj_virtualkey_retry);
		}
		if (instance_exists(obj_virtualkey_back_to_main_menu))
		{
			with (obj_virtualkey_back_to_main_menu) virtual_key_delete(vkey_back_to_main_menu);
			instance_destroy(obj_virtualkey_back_to_main_menu);
		}
		instance_activate_all();
		room_restart();
		break;
	case 52:  
		global.paused = false;
		with (obj_virtualkey_resume) virtual_key_delete(vkey_resume);
		instance_destroy(obj_virtualkey_resume);
		with (obj_virtualkey_back_to_main_menu) virtual_key_delete(vkey_back_to_main_menu);
		instance_destroy(obj_virtualkey_back_to_main_menu);
		instance_activate_all();
		room_goto(rm_main_menu);
		break;
	case 53:
		if (room == rm_main_menu)
		{
			credit = true;
			instance_deactivate_all(true);
			instance_activate_object(obj_virtualkey_credits);
			instance_activate_object(obj_controller);
			obj_controller.dont_draw = true;
			obj_virtualkey_credits.credit = true;
			with (obj_virtualkey_credits) virtual_key_delete(vkey_credits);
			instance_create_depth(144, 384, -1, obj_virtualkey_back_to_main_menu);
			obj_virtualkey_back_to_main_menu.state = 4;
			obj_controller.tra = 8;
			obj_controller.tick = 0;
			global.transition = "start";
		}
		break;
	case 54:
		with (obj_virtualkey_back_to_main_menu) virtual_key_delete(vkey_back_to_main_menu);
		instance_destroy(obj_virtualkey_back_to_main_menu);
		instance_activate_all();
		obj_controller.dont_draw = false;
		obj_virtualkey_credits.credit = false;
		obj_virtualkey_credits.alarm[1] = 1;
		break;
	case 55:
		if (instance_exists(obj_virtualkey_next_level))
		{
			with (obj_virtualkey_next_level) virtual_key_delete(vkey_next_level);
			instance_destroy(obj_virtualkey_next_level);
		}
		if (instance_exists(obj_virtualkey_back_to_main_menu))
		{
			with (obj_virtualkey_back_to_main_menu) virtual_key_delete(vkey_back_to_main_menu);
			instance_destroy(obj_virtualkey_back_to_main_menu);
		}
		instance_activate_all();
		room_goto_next();
		global.current_level += 1;
		audio_stop_sound(snd_clapping);
		break;
}

if (global.level_selected < 50) global.current_level = global.level_selected;

