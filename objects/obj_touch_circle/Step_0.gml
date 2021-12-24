/// @desc Move to where the finger(cursor) is

x = device_mouse_x_to_gui(0);
y = device_mouse_y_to_gui(0);

var move = (x - obj_touch_center.x) / 40;

if (move > 1) move = 1;
if (move < -1) move = -1;

global.move = move;
