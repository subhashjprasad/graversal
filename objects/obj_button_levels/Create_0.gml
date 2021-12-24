/// @desc Set sprite

image_speed = 0;
image_index = level - 1;
image_xscale = 0.8;
if (global.level_lock[level - 1] == 0)
{
	image_alpha = 0.5;
}

var xstep = display_get_gui_width() / 8;
var ystep = display_get_gui_height() / 6;

column = level % 8;
if (column == 0) column = 8;
row = ceil(level / 8);

x = xstep * column - display_get_gui_width() / 32;
y = ystep * row + display_get_gui_height() / 24 - 20;

clicked = false;