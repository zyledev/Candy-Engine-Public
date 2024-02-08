function scr_player_freefallprep()
{
	hsp = 0;
	if (((scr_solid(x + 1, y) && move == 1) || (scr_solid(x - 1, y) && move == -1)) && !place_meeting(x + sign(hsp), y, obj_slope))
		movespeed = 0;
	start_running = 1;
	alarm[4] = 14;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = false;
	machslideAnim = 1;
	moveAnim = true;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 1;
	sprite_index = spr_player_bodyslamstart;
	move = key_left + key_right;
	if (!grounded)
	{
		hsp = move * movespeed;
		if (move != xscale && momemtum == 1 && movespeed != 0)
			movespeed -= 0.05;
		if (movespeed == 0)
			momemtum = 0;
		if ((move == 0 && momemtum == 0) || scr_solid(x + hsp, y))
		{
			movespeed = 0;
			mach2 = 0;
		}
		if (move != 0 && movespeed < 7)
			movespeed += 0.25;
		if (movespeed > 7)
			movespeed -= 0.05;
		if ((scr_solid(x + 1, y) && move == 1) || (scr_solid(x - 1, y) && move == -1))
			movespeed = 0;
		if (dir != xscale)
		{
			mach2 = 0;
			dir = xscale;
			movespeed = 0;
		}
		if (move == -xscale)
		{
			mach2 = 0;
			movespeed = 0;
			momemtum = 0;
		}
		if (move != 0)
			xscale = move;
	}
	image_speed = 0.5;
	if (floor(image_index) == (image_number - 1))
	{
		vsp += 14;
		state = states.freefall;
		metal = 0;
	}
}
