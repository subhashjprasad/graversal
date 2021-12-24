/// @desc Draw on GUI layer

if (clicked == false) draw_sprite(spr_store, 0, display_get_gui_width() / 2, display_get_gui_height() / 2 + 80);
else draw_sprite_ext(spr_store, 0, display_get_gui_width() / 2, display_get_gui_height() / 2 + 80, 1, 1, 0, c_black, 0.5);
