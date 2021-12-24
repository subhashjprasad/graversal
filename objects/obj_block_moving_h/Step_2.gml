/// @desc Check stuff

//Horizontal platform movement
hsp = move_speed * plat_dir;

var wall_collision = place_meeting(x + hsp, y, obj_block)
var player_collision = (place_meeting(x + hsp, y, obj_player))

if ((wall_collision) || (player_collision))
{
	plat_dir *= -1;
}

//Carry player along
with (obj_player)
{
	if (global.grv_down == true)
	{
		if (place_meeting(x, y + 1, other) && !place_meeting(x, y, other))		//If on top of a block and not clipping through it
		{
			x += other.hsp;
		}
	} else 
	{
		if (place_meeting(x, y - 1, other) && !place_meeting(x, y, other))		//If on top of a block and not clipping through it
		{
			x += other.hsp;
		}
	}
}

//Horizontal collision check
if (place_meeting(x + sign(hsp), y, obj_player))		//If collision with player is imminent
{
	obj_player.x += sign(hsp);
}
	
x += hsp;