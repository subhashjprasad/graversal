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
	show_debug_message("Game Loaded Successfully");
} else
{
	show_debug_message("Could Not Find Save File")
}

global.level_lock[0] = 1;
global.jump_arr[0] = 1;

