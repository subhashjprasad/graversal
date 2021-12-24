/// @desc Set variables

destroying = false;

if (0 <= global.current_level && global.current_level < 17)
{
	sprite_index = spr_coin;
	dis = spr_coin_disappear;
	value = 1;
} else if (17 <= global.current_level && global.current_level < 33)
{
	sprite_index = spr_coin_red;
	dis = spr_coin_disappear_red;
	value = 2;
} else //(33 <= global.current_level && global.current_level< 49)
{
	sprite_index = spr_coin_blue;
	dis = spr_coin_disappear_blue;
	value = 3
}