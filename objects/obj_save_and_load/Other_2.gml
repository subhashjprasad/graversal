/// @desc Load the game

var root_list = ds_list_create();

var map = ds_map_create();
ds_list_add(root_list, map);
ds_list_mark_as_map(root_list, ds_list_size(root_list) - 1);

for (var j = 0; j < 48; j++)
{
	ds_map_add(map, string(j), 0);
}
ds_map_add(map, "tutorial_completed", 0);
ds_map_add(map, "coins", 0);

var wrapper = ds_map_create();
ds_map_add_list(wrapper, "ROOT", root_list);

ds_map_destroy(wrapper);

if (file_exists("savedgame.sav"))
{
	var buffer = buffer_load("savedgame.sav");
	var str = buffer_read(buffer, buffer_string);
	buffer_delete(buffer);

	var wrapper = json_decode(str);
	
	var list = wrapper[? "ROOT"];
	
	for (var i = 0; i < ds_list_size(list); i++)
	{
		var map = list[| i];
		
		for (var j = 0; j < 48; j++)
		{
			global.level_lock[j] = map[? string(j)];
		}
		
		for (var k = 100; k < 113; k++)
		{
			global.colors[k - 100] = map[? string(k)];
		}
		
		for (var h = 50; h < 54; h++)
		{
			global.jump_arr[h - 50] = map[? string(h)];
		}
		
		global.tutorial_completed = map[? "tutorial_completed"];
		global.coins = map[? "coins"];
	}
	
	ds_map_destroy(wrapper);
	
	if (global.colors[0] == 2) global.tint = c_maroon;
	else if (global.colors[1] == 2) global.tint = c_red;
	else if (global.colors[2] == 2) global.tint = c_orange;
	else if (global.colors[3] == 2) global.tint = c_yellow;
	else if (global.colors[4] == 2) global.tint = c_olive;
	else if (global.colors[5] == 2) global.tint = c_lime;
	else if (global.colors[6] == 2) global.tint = c_green;
	else if (global.colors[7] == 2) global.tint = c_aqua;
	else if (global.colors[8] == 2) global.tint = c_blue;
	else if (global.colors[9] == 2) global.tint = c_navy;
	else if (global.colors[10] == 2) global.tint = c_purple;
	else if (global.colors[11] == 2) global.tint = c_fuchsia;
	else global.tint = c_white;
	
	if (global.jump_arr[1] == 2) global.jump_boost = 1;
	else if (global.jump_arr[2] == 2) global.jump_boost = 2;
	else if (global.jump_arr[3] == 2) global.jump_boost = 3;
	else global.jump_boost = 0;
	
	show_debug_message("Game Loaded Successfully");
} else
{
	show_debug_message("Could Not Find Save File")
}

global.level_lock[0] = 1;
