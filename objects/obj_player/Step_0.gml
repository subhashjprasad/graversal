/// @desc Do everything

//Check tutorial completion
if (global.tutorial_completed == 3)
{
	if (temp < 30)
	{
		temp += 1;
	} else
	{
		temp = 1;
		
		if (subim < 15)
		{
			subim += 1;
		} else
		{
			subim = 0;
		}
	}
}

//Check key presses
jump = keyboard_check_pressed(vk_space);

//Move horizontally
if (global.move != 0)
{
	hsp = lerp(hsp, global.move * max_hsp, acc_speed);
} else 
{
	hsp = lerp(hsp, 0, acc_speed);
}

//Apply gravity
vsp = vsp + global.grv;	

//Jump player
if (global.grv_down == true)		//If gravity is down
{
	if (place_meeting(x, y + 1, obj_block)) && (jump == true)		//If jump is pressed and a block is underneath
	{
		vsp = -(jumpsp + global.jump_boost);
		audio_play_sound(snd_jump, 0, 0);
	}
} else		//If gravity is up
{
	if (place_meeting(x, y - 1, obj_block)) && (jump == true)		//If jump is pressed and a block is overhead
	{
		vsp = jumpsp + global.jump_boost;
		audio_play_sound(snd_jump, 0, 0);
	}
}

//Horizontal collision check
if (place_meeting(x + hsp, y, obj_block))		//If a collision with block is imminent
{
	while(!place_meeting(x + sign(hsp), y, obj_block))		//Move until hitting the block
	{
		x += sign(hsp);
	}
	hsp = 0;		//Stop moving horizontally
}

x += hsp;		//Update horizontal position

//Vertical collision check
if (place_meeting(x, y + vsp, obj_block))		//If a collision with block is imminent
{
	while(!place_meeting(x, y + sign(vsp), obj_block))		//Move until hitting the block
	{
		y += sign(vsp);
	}
	vsp = 0;		//Stop moving vertically
}

y += vsp;		//Update vertical position

//Spike object collision check
if (place_meeting(x, y, obj_spike))
{
	obj_controller.dead = true;
	audio_play_sound(snd_lose, 0, 0);
}

//Laserbeam collision check
if place_meeting(x, y, obj_laserbeam)
{
	obj_controller.dead = true;
	audio_play_sound(snd_lose, 0, 0);
}

//Bullet collision check
if place_meeting(x, y, obj_bullet)
{
	obj_controller.dead = true;
	audio_play_sound(snd_lose, 0, 0);
}