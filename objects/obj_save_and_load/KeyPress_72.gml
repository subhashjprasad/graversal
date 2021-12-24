/// @desc Reset the game

var root_list = ds_list_create();

var map = ds_map_create();
ds_list_add(root_list, map);
ds_list_mark_as_map(root_list, ds_list_size(root_list) - 1);

for (var j = 0; j < 48; j++)
{
	ds_map_add(map, string(j), 0);
}
for (var k = 100; k < 113; k++)
{
	ds_map_add(map, string(k), 0);
}
for (var h = 50; h < 54; h++)
{
	ds_map_add(map, string(h), 0);
}
ds_map_add(map, "tutorial_completed", 0);
ds_map_add(map, "coins", 0);

var wrapper = ds_map_create();
ds_map_add_list(wrapper, "ROOT", root_list);

var str = json_encode(wrapper);
var buffer = buffer_create(string_byte_length(str) + 1, buffer_fixed, 1);
buffer_write(buffer, buffer_string, str);
buffer_save(buffer, "savedgame.sav");
buffer_delete(buffer);

ds_map_destroy(wrapper);

show_debug_message("Game Reset Successfully!");

