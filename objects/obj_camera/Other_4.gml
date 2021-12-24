/// @desc Set view settings

//Get view dimensions
//view_width = display_get_width() / 4 * 0.75;		
//view_height = display_get_height() / 4 * 0.75;

view_width = 2436 / 4 * 0.75;		
view_height = 1125 / 4 * 0.75;

window_scale = 2;		//Set window scale

window_set_size(view_width * window_scale, view_height * window_scale);		//Set window size
alarm[0] = 1;		//Call center window alarm

surface_resize(application_surface, view_width * window_scale, view_height * window_scale);		//Resize the application surface

display_set_gui_size(view_width * 2, view_height * 2);		//Set GUI size

view_enabled = true;
view_visible[0] = true;