/// @desc Set variables and set up virtual keys

vkey_jump_boost0 = virtual_key_add(310, 171, sprite_get_width(spr_jump_boost_icon), sprite_get_height(spr_jump_boost_icon), vk_up);
vkey_jump_boost1 = virtual_key_add(380, 171, sprite_get_width(spr_jump_boost_icon), sprite_get_height(spr_jump_boost_icon), vk_down);
vkey_jump_boost2 = virtual_key_add(450, 171, sprite_get_width(spr_jump_boost_icon), sprite_get_height(spr_jump_boost_icon), vk_left);
vkey_jump_boost3 = virtual_key_add(520, 171, sprite_get_width(spr_jump_boost_icon), sprite_get_height(spr_jump_boost_icon), vk_right);

alpha_jump0 = 1;
alpha_jump1 = 0.5;
alpha_jump2 = 0.5;
alpha_jump3 = 0.5;

clickable = false;
alarm[0] = 30;

clicked0 = false;
clicked1 = false;
clicked2 = false;
clicked3 = false;

confirming = false;
clicked_yes = false;
clicked_no = false;
confirming_j = 0;