/// @desc Set greyscale
var xstep = display_get_gui_width() / 8;
var ystep = display_get_gui_height() / 6;

column = level % 8;
if (column == 0) column = 8;
row = ceil(level / 8);

if (global.level_lock[level - 1] == 0)
{
	shader_set(shader_greyscale);
	if (clicked == false) draw_self();
	else draw_sprite_ext(spr_levels, level - 1, xstep * column - display_get_gui_width() / 32, ystep * row + display_get_gui_height() / 24 - 20, 0.8, 1, 0, c_black, 0.5);
	shader_reset();
} else
{
	if (clicked == false) draw_self();
	else draw_sprite_ext(spr_levels, level - 1, xstep * column - display_get_gui_width() / 32, ystep * row + display_get_gui_height() / 24 - 20, 0.8, 1, 0, c_black, 0.5);
}