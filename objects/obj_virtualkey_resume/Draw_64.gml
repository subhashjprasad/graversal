/// @desc Draw on GUI layer

if (clicked == false) draw_sprite(spr_resume, 0, display_get_gui_width() / 2 - sprite_get_width(spr_resume) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_resume) / 2 - 30);
else draw_sprite_ext(spr_resume, 0, display_get_gui_width() / 2 - sprite_get_width(spr_resume) / 2, display_get_gui_height() / 2 - sprite_get_height(spr_resume) / 2 - 30, 1, 1, 0, c_black, 0.5);
